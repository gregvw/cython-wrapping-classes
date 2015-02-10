import cython

cdef extern from "foo.hpp":
    cdef cppclass Foo:
        Foo()
        Foo(int)
        int count
        void inc()
        int get_count() 


cdef extern from "bar.hpp":
    cdef cppclass Bar:
        Bar(Foo&)
        void inc()
        int get_count()  

