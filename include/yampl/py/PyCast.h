/**
 * @author Ayoub Chouak (a.chouak@protonmail.com)
 * @file   PyCast.h
 * @brief  Type casters for Python bindings
 */


#ifndef YAMPL_PYCAST_H
#define YAMPL_PYCAST_H

#include "yampl/ISocketFactory.h"
#include "yampl/Exceptions.h"

#include <pybind11/pybind11.h>
#include <string>
#include <cstdint>

#if PY_MAJOR_VERSION < 3
    #define PyVariantString_FromString PyString_AS_STRING
#else
    #define PyVariantString_FromString PyUnicode_FromString
#endif

namespace py_ = pybind11;

namespace yampl
{
    namespace py
    {
        class buffer
        {
            protected:
                uint8_t* buffer;
                size_t   size;
                static py_::object pickle_module;

                py_::object pickle_dumps(py_::object obj)
                {
                    auto pickle = PyObject_CallMethod(pickle_module.ptr(), PyVariantString_FromString("dumps"), obj.ptr());
                    return pickle;
                }
            public:
                buffer(uint8_t* buffer_, size_t size_)
                    : buffer(buffer_)
                    , size(size_)
                {
                    // Load the pickle module
                    if (pickle_module == nullptr)
                    {
                        pickle_module = py_::object(py_::handle(PyImport_ImportModuleNoBlock("pickle")), false);

                        if (pickle_module.ptr() == nullptr)
                            throw UnsupportedException("Could not load Python module `pickle`");
                    }
                }

                static auto get_state(buffer_t buf)
                {
                    PyObject* obj = PyBytes_FromStringAndSize(buffer, size);
                    py_::object obj_ref(py_::handle(obj), false);

                    return py_::make_tuple(size, obj_ref);
                }

                static auto set_state(py_::object obj)
                {

                }

                uint8_t* setBuffer(uint8_t* buffer_)
                {
                    uint8_t* old = buffer;
                    buffer = buffer_;

                    return old;
                }

                size_t setSize(size_t size_)
                {
                    size_t old = size;
                    size = size_;

                    return old;
                }

                uint8_t* getBuffer() {
                    return buffer;
                }

                size_t getSize() {
                    return size;
                }

                void release() {
                    if (buffer != nullptr)
                        delete buffer;
                    size = 0;
                }
        };
    }
}

namespace pybind11
{
    namespace detail
    {

    }
}

#endif //YAMPL_PYCAST_H
