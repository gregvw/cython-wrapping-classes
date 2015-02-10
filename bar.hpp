#include "foo.hpp"

class Bar {

    private: 
        Foo foo;
    public:
        Bar(const Foo &f) : foo(f) {}
        void inc() { foo.inc(); }
        int get_count() { return foo.get_count(); }

};

