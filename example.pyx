cimport c_example
from c_example cimport Foo, Bar

cdef class PyFoo:
    cdef Foo *thisptr

    def __init__(self,int n=0):
        self.thisptr = new Foo(n)

    def __dealloc__(self):
        del self.thisptr

    def inc(self):
       self.thisptr.inc()

    def get_count(self):
       return self.thisptr.get_count()


cdef class PyBar:
    cdef Bar *thisptr 
 
    def __init__(self, PyFoo foo):
        
        # How we dereference for Python 
        self.thisptr = new Bar(foo.thisptr[0])

    def __dealloc__(self):
        del self.thisptr

    def inc(self):
        self.thisptr.inc()

    def get_count(self):
        return self.thisptr.get_count()

    
