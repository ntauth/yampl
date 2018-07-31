/**
 * @author Ayoub Chouak (a.chouak@protonmail.com)
 * @file   PyCast.cpp
 * @brief  Type casters for Python bindings
 */

#include "yampl/py/PyCast.h"

namespace yampl
{
    namespace py
    {
        py_::object pickler::get_pickle_module()
        {
            static py_::object _instance = py_::reinterpret_borrow<py_::object>(py_::handle(PyImport_ImportModuleNoBlock("pickle")));

            if (!_instance)
                throw UnsupportedException("Could not load Python module `pickle`");

            return _instance;
        }

        py_::object pickler::dumps(py_::object obj)
        {
            auto pickle_module = get_pickle_module();
            auto pickle = PyObject_CallMethodObjArgs(pickle_module.ptr(), PyVariantString_FromString("dumps"), obj.ptr(), nullptr);
            return py_::reinterpret_steal<py_::object>(py_::handle(pickle));
        }

        py_::object pickler::loads(py_::object obj)
        {
            auto pickle_module = get_pickle_module();
            auto unpickle = PyObject_CallMethodObjArgs(pickle_module.ptr(), PyVariantString_FromString("loads"), obj.ptr(), nullptr);
            return py_::reinterpret_steal<py_::object>(py_::handle(unpickle));
        }

        py_::object pickler::loads(byte_buffer const& buffer)
        {
            auto pickle_module = get_pickle_module();
            auto obj = PyBytes_FromStringAndSize(reinterpret_cast<const char*>(buffer.getBuffer()), buffer.getSize());
            return loads(py_::reinterpret_steal<py_::object>(py_::handle(obj)));
        }
    }
}