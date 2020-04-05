
# Polymorphism_basics C++

![Language](https://img.shields.io/badge/language-C++-blue.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)
![Build](https://img.shields.io/badge/build-failed-red.svg)
![Issues](https://img.shields.io/badge/issues-1%20open-red.svg)
## Objective : 
  1. Define an abstract class Shape to act as interface. (Use pure virtual functions)
  2. Override the methods in the derived classes Circle, Rectangle, Triangle.
  3. Two functions are needed - a. Read() -> To read input parameters(measurements) of a particular shape.
                                b. Area() -> To calculate the total area of a shape.
  4. Store objects(or pointers to objects) of different derived classes in an array.
  5. Calculate area of each array member.
  6. Calculate total area.

## Description of folders :

    -+[ Project ]
     |
     +--● Makefile
     |
     +--+[ build ]
     |  |
     |  +--+[ objects ]
        |  |    
        |  +--● rectangle.o
        |  +--● triangle.o
        |  +--● circle.o
        |  +--● main.o

     |  +--+[ apps ]
     |  |
     |  |  +--● program (binary file)
     +--+[ include ]
     |  |
     |  +--● shape.hpp
     |  +--● rectangle.hpp
     |  +--● triangle.hpp
     |  +--● circle.hpp
     |
     +--+[ src ]
     |  |
     |  +--● shape.cpp
     |  +--● rectangle.cpp
     |  +--● triangle.cpp
     |  +--● circle.cpp
     |  +--● main.cpp



   # 1. build
       The object files produced by Makefile are stored here.
       Thus build/objects/src contains main.o circle.o triangle.o rectangle.o
       To link them , use g++ main.o circle.o triangle.o rectangle.o 
       The executable a.out is now produced in the same folder.
       ./a.out executes the program.
   
   # 2. include
        Contains header files shape.hpp rectangle.hpp triangle.hpp circle.hpp
        shape.hpp is the abstract base class where virtual methods are defined.
        rectangle.hpp, triangle.hpp and circle.hpp inherits these function signatures
        and overrides them to work according to the specific derived class.
   
   # 3. src
        Contains implementation files rectangle.cpp triangle.cpp circle.cpp
        and client file main.cpp
        The interaction with user is defined in main.cpp and the total area calculations are 
        done there itself.

## Compiler, IDE and OS specifications
    I used Linux subsytem for Windows.
    gcc version 7.3.0 (Ubuntu 7.3.0-27ubuntu1~18.04)
    Visual Studio Code was used for managing the project.
    
