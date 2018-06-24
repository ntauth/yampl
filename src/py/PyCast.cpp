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
            static py_::object _instance = py_::object(py_::handle(PyImport_ImportModuleNoBlock("pickle")), true);

            if (!_instance)
                throw UnsupportedException("Could not load Python module `pickle`");

            return _instance;
        }

        py_::object pickler::dumps(py_::object obj)
        {
            auto pickle_module = get_pickle_module();
            auto pickle = PyObject_CallMethodObjArgs(pickle_module.ptr(), PyVariantString_FromString("dumps"), obj.ptr(), nullptr);
            return py_::object(py_::handle(pickle), false);
        }

        py_::object pickler::loads(py_::object obj)
        {
            auto pickle_module = get_pickle_module();
            auto unpickle = PyObject_CallMethodObjArgs(pickle_module.ptr(), PyVariantString_FromString("loads"), obj.ptr());
            return py_::object(py_::handle(unpickle), false);
        }
    }
}