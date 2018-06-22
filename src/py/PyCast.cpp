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
        py_::object pickler::pickle_module;
        pickler byte_buffer::pickler_obj;
    }
}