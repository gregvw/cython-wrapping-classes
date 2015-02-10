#ifndef __FOO__
#define __FOO__

class Foo {

    private:
       int count = 0;

    public:
       Foo() {}
       Foo(int n) : count(n) {}
       void inc(){ ++count; } 
       int get_count() { return count; }
};

#endif
