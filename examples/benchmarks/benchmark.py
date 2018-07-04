#!/usr/bin/env python

import sys
import re
import math
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


class Benchmark:
    """Class containing client/server benchmark asynchronous methods"""
    def __init__(self, channel, size, iterations):
        self.channel = channel
        self.size = size
        self.iterations = iterations

    @staticmethod
    def parse_channel(channel):
        name = channel.name

        if channel.context == ym.Context.THREAD:
            ctx = 'thread'
        elif channel.context == ym.Context.LOCAL_SHM:
            ctx = 'local_shm'
        elif channel.context == ym.Context.LOCAL_PIPE:
            ctx = 'local_pipe'
        elif channel.context == ym.Context.LOCAL:
            ctx = 'local'
        elif channel.context == ym.Context.DISTRIBUTED:
            ctx = 'distributed'
        else:
            ctx = ''

        return name, ctx

    @staticmethod
    def make_payload(size, pattern):
        padding = size % len(pattern)
        payload = bytearray(math.floor((size / len(pattern))) * pattern + padding * '\x00', 'utf-8')
        return payload

    @run_async
    def client(self):
        channel_parsed = self.parse_channel(self.channel)
        socket = ym.ClientSocket(channel_parsed[0], channel_parsed[1])

        s_buffer = self.make_payload(self.size, 'yampl')
        r_buffer = ''

        for i in range(1, self.iterations):
            socket.send_raw(s_buffer)
            r_buffer = socket.recv_raw()


def main(args):
    sock_impl = 'zmq'
    sock_ctx = 'local'
    sock_channel = 'service'

    iterations = 1e3
    payload_size = 1e6
    multiplicity = 1

    for k, v in args.items():
        if k == 'i':
            sock_impl = v
        elif k == 'n':
            iterations = v
        elif k == 's':
            payload_size = v
        elif k == 'c':
            sock_ctx_s = v
        elif k == 'm':
            multiplicity = v

    print('[+] Running benchmark with: \n - Iterations: %i \n - Payload Size: %i \n - Multiplicity: %i\n',
          iterations, payload_size, multiplicity)

    return


if __name__ == '__main__':
    try:
        main(ArgParserHelper(sys.argv).parse())
    except ValueError:
        print('Usage: %s [-i impl] [-c context] [-n iterations] [-s size]')
