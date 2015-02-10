# setup.py

from distutils.core import setup
from distutils.extension import Extension
from Cython.Distutils import build_ext
import os


os.environ["CC"] = "g++"
os.environ["CXX"] = "g++"

setup( name = 'example',
       version = '0.1',
       author = 'Greg von Winckel',
       description = 'Minimal example of wrapping interacting C++ classes',
       ext_modules = [ Extension("example",
                           sources=["example.pyx"],
                           extra_compile_args=["-std=c++11"],
                           language="c++") ],
       cmdclass = { 'build_ext':build_ext},
) 
