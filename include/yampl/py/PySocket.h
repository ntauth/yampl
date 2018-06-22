/**
 * @author Ayoub Chouak (a.chouak@protonmail.com)
 * @file   PySocket.h
 * @brief  Socket wrapper for PyBind11
 */

#ifndef YAMPL_PYSOCKET_H
#define YAMPL_PYSOCKET_H

#include "yampl/ISocket.h"

#include "yampl/py/PyCast.h"
#include "yampl/py/PySocketFactory.h"

#include <algorithm>
#include <memory>
#include <string>
#include <iostream>

namespace py_ = pybind11;

namespace yampl
{
    namespace py
    {
        /**
         * @brief Python wrapper class for yampl::ISocket
         */
        class PySocket
        {
            protected:
                std::unique_ptr<ISocket> socket;
                std::unique_ptr<PySocketFactory> factory;
                Channel channel;

            public:
                virtual ~PySocket() {}

                /**
                 *
                 * @param name utf-8 encoded name
                 * @param context channel context
                 */
                PySocket(std::string name, std::string context)
                {
                    Context ctx;

                    std::transform(name.begin(), name.end(), name.begin(), ::tolower);

                    // Decode the context string to a yampl::Context
                    if (context == "THREAD")
                        ctx = Context::THREAD;
                    else if (context == "LOCAL")
                        ctx = Context::LOCAL;
                    else if (context == "LOCAL_SHM")
                        ctx = Context::LOCAL_SHM;
                    else if (context == "LOCAL_PIPE")
                        ctx = Context::LOCAL_PIPE;
                    else if (context == "DISTRIBUTED")
                        ctx = Context::DISTRIBUTED;
                    else
                        throw py_::value_error(context + " is not a valid context.");

                    channel.name = name;
                    channel.context = ctx;

                    factory = std::make_unique<PySocketFactory>();
                }

                void send(py_::object message)
                {
                    byte_buffer raw = message.cast<byte_buffer>();

                    socket->send(raw.getBuffer(), raw.getSize());
                }
        };
    }
}

#endif // YAMPL_PYSOCKET_H
