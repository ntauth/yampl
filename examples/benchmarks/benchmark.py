#!/usr/bin/env python

import sys
import os
import re
import math
import time
import yampl as ym


class ArgParserHelper:
    """Helper class to parse arguments"""
    def __init__(self, argv):
        self.args = list(argv)
        self.rx = re.compile(r'^-([a-zA-Z_\-]+)\s+(\w*)$')

    def parse(self):
        kwargs = {}

        for arg in self.args:
            m = self.rx.match(arg)

            if m is not None:
                if not m.group(1) in kwargs:
                    kwargs[m.group(1)] = m.group(2)
                else:
                    raise ValueError('Duplicate argument')

        return kwargs

    def purge(self):
        args = list()

        for arg in self.args:
            args = list(self.args)
            m = self.rx.match(arg)

            if m is not None:
                args.remove(m.group())

        return args


def run_async(func):
    """Async decorator (https://code.activestate.com/recipes/576684-simple-threading-decorator/)"""
    from threading import Thread
    from functools import wraps

    @wraps(func)
    def async_func(*args, **kwargs):
        func_hl = Thread(target=func, args=args, kwargs=kwargs)
        func_hl.start()
        return func_hl

    return async_func


def run_fork(func):
    """Fork decorator"""
    import os
    from functools import wraps

    @wraps(func)
    def fork_func(*args, **kwargs):
        pid = os.fork()

        if pid == 0:
            func(*args, **kwargs)
            sys.exit(0)
        else:
            return pid

    return fork_func


class Benchmark:
    """Class containing client/server benchmark asynchronous methods"""
    def __init__(self, channel, size, iterations):
        self.channel = channel
        self.size = int(size)
        self.iterations = int(iterations)
        self.mailbox = {}

    @staticmethod
    def parse_context(context):
        if context == 'thread':
            ctx = ym.Context.THREAD
        elif context == 'local_shm':
            ctx = ym.Context.LOCAL_SHM
        elif context == 'local_pipe':
            ctx = ym.Context.LOCAL_PIPE
        elif context == 'local':
            ctx = ym.Context.LOCAL
        elif context == 'distributed':
            ctx = ym.Context.DISTRIBUTED
        else:
            ctx = ''

        return ctx

    @staticmethod
    def parse_context_s(context):
        if context == ym.Context.THREAD:
            ctx = 'thread'
        elif context == ym.Context.LOCAL_SHM:
            ctx = 'local_shm'
        elif context == ym.Context.LOCAL_PIPE:
            ctx = 'local_pipe'
        elif context == ym.Context.LOCAL:
            ctx = 'local'
        elif context == ym.Context.DISTRIBUTED:
            ctx = 'distributed'
        else:
            ctx = ''

        return ctx

    @staticmethod
    def parse_channel(channel):
        ctx = Benchmark.parse_context_s(channel.context)

        if channel.context == ym.Context.DISTRIBUTED:
            name = '127.0.0.1:3333'
        else:
            name = channel.name

        return name, ctx

    @staticmethod
    def make_payload(size, pattern):
        padding = int(size % len(pattern))
        payload = int(math.floor((size / len(pattern)))) * pattern + (padding * '\x00')
        return payload

    @run_fork
    def client_fork(self):
        self.client_thunk()

    @run_async
    def client_async(self):
        self.client_thunk()

    def client_thunk(self):
        retval = self.client()
        self.mailbox['client'] = retval

    def client(self):
        channel_parsed = self.parse_channel(self.channel)
        socket = ym.ClientSocket(channel_parsed[0], channel_parsed[1])

        s_buffer = self.make_payload(self.size, 'yampl')

        start_tm = time.clock()

        for i in range(self.iterations):
            socket.send_raw(s_buffer)
            r_buffer = socket.recv_raw()

        end_tm = time.clock()

        return 1e6 * (end_tm - start_tm)

    @run_fork
    def server_fork(self, multiplicity):
        self.server_thunk(multiplicity)

    @run_async
    def server_async(self, multiplicity):
        self.server_thunk(multiplicity)

    def server_thunk(self, multiplicity):
        retval = self.server(multiplicity)
        self.mailbox['server'] = retval

    def server(self, multiplicity):
        channel_parsed = self.parse_channel(self.channel)
        socket = ym.ServerSocket(channel_parsed[0], channel_parsed[1])

        s_buffer = self.make_payload(self.size, 'yampl')

        start_tm = time.clock()

        for i in range(self.iterations * multiplicity):
            r_buffer = socket.recv_raw()
            socket.send_raw(s_buffer)

        end_tm = time.clock()
        elapsed_tm = 1e6 * (end_tm - start_tm)

        return elapsed_tm


def main(args):
    sock_ctx = 'local_pipe'
    sock_channel = 'service'

    iterations = 1e3
    payload_size = 1e6
    multiplicity = 1

    # Parse opt-args
    for k, v in args.items():
        if k == 'i':
            sock_impl = v
        elif k == 'n':
            iterations = v
        elif k == 's':
            payload_size = v
        elif k == 'c':
            sock_ctx = v
        elif k == 'm':
            multiplicity = v

    print('[+] Running benchmark with: \n - Iterations: %d \n - Payload Size: %d \n - Multiplicity: %d'
          % (iterations, payload_size, multiplicity))

    # Run
    sock_channel_ = ym.Channel(sock_channel, Benchmark.parse_context(sock_ctx))

    ctxs = [ym.Context.LOCAL, ym.Context.LOCAL_PIPE, ym.Context.LOCAL_SHM, ym.Context.DISTRIBUTED]

    if sock_channel_.context in ctxs:
        benchmark = Benchmark(sock_channel_, payload_size, iterations)

        pids = []

        for i in range(1, multiplicity + 1):
            pids.append(benchmark.client_fork())

        benchmark.server_thunk(multiplicity)

        for pid in pids:
            os.waitpid(pid, 0)
    elif sock_channel_.context == ym.Context.THREAD:
        benchmark = Benchmark(sock_channel_, payload_size, iterations)

        tasks = []

        for i in range(multiplicity):
            tasks.append(benchmark.client_async())

        benchmark.server_async(multiplicity)

        for task in tasks:
            task.join()
    else:
        raise ValueError('Context is invalid')

    server_tm = benchmark.mailbox['server']

    print('[+] Latency: %f μS' % (server_tm / (2 * iterations * multiplicity)))
    print('[+] Bandwidth: %f MB/s' % (2 * payload_size * iterations * multiplicity / server_tm))

    return


if __name__ == '__main__':
    try:
        main(ArgParserHelper(sys.argv).parse())
    except ValueError:
        print('Usage: %s [-c context] [-n iterations] [-s size]')
