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
        class pickler
        {
            private:
                static py_::object get_pickle_module();
            public:
                static py_::object dumps(py_::object obj);
                static py_::object loads(py_::object obj);
        };


        class byte_buffer
        {
            public:
                using data_type = uint8_t;

                byte_buffer() = default;

                byte_buffer(uint8_t* buffer_, size_t size_)
                    : buffer(buffer_)
                    , size(size_)
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

                uint8_t* getBuffer() const {
                    return buffer;
                }

                size_t getSize() const {
                    return size;
                }

                void release() {
                    if (buffer != nullptr)
                        delete buffer;
                    size = 0;
                }
            protected:
                data_type* buffer;
                size_t     size;
        };
    }
}

namespace pybind11
{
    namespace detail
    {
        template <> struct type_caster<yampl::py::byte_buffer>
        {
            public:
                PYBIND11_TYPE_CASTER(yampl::py::byte_buffer, _("byte_buffer"));

                /**
                 * Conversion part 1 (Python->C++): convert a PyObject into a byte_buffer
                 * instance or return false upon failure. The second argument
                 * indicates whether implicit conversions should be applied.
                 *
                 * @arg h PyObject handle
                 */
                bool load(handle h, bool)
                {
                    object pickle = yampl::py::pickler::dumps(object(h, true));

                    if (!pickle)
                        return false;
                    value = yampl::py::byte_buffer(reinterpret_cast<uint8_t*>(PyBytes_AsString(pickle.ptr())), py_::len(pickle));

                    /* Ensure return code was OK (to avoid out-of-range errors etc) */
                    return !(value.getBuffer() == nullptr && !PyErr_Occurred());
                }

                /**
                 * Conversion part 2 (C++ -> Python): convert an byte_buffer instance into
                 * a Python object. The second and third arguments are used to
                 * indicate the return value policy and parent object (for
                 * ``return_value_policy::reference_internal``) and are generally
                 * ignored by implicit casters.
                 *
                 * @src src the byte_buffer to cast
                 */
                static handle cast(yampl::py::byte_buffer src, return_value_policy /* policy */, handle /* parent */)
                {
                    PyObject* bytes = PyBytes_FromStringAndSize(reinterpret_cast<const char*>(src.getBuffer()), src.getSize());
                    return py_::make_tuple(src.getSize(), bytes);
                }
        };
    }
}

#endif //YAMPL_PYCAST_H
