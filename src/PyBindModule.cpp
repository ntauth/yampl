/**
 * @author Ayoub Chouak (a.chouak@protonmail.com)
 * @file   PyBindModule.cpp
 * @brief  The file contains the pybind11 bindings definition for YAMPL
 */

#include "yampl/Channel.h"
#include "yampl/ISocket.h"
#include "yampl/ISocketFactory.h"

#include <pybind11/pybind11.h>

namespace py = pybind11;

PYBIND11_MODULE(yampl_py, self)
{
    /**
    * yampl::Context
    */
    py::enum_<yampl::Context>(self, "Context")
    .value("THREAD", yampl::Context::THREAD)
    .value("LOCAL_SHM", yampl::Context::LOCAL_SHM)
    .value("LOCAL_PIPE", yampl::Context::LOCAL_PIPE)
    .value("LOCAL", yampl::Context::LOCAL)
    .value("DISTRIBUTED", yampl::Context::DISTRIBUTED);

    /**
    * yampl::Channel
    */
    py::class_<yampl::Channel>(self, "Channel")
    .def(py::init<const std::string&, yampl::Context>())
    .def_readwrite("name", &yampl::Channel::name)
    .def_readwrite("context", &yampl::Channel::context);
}