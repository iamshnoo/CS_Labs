# Person_class using C++

![Language](https://img.shields.io/badge/language-C++-blue.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)
![Build](https://img.shields.io/badge/build-passing-green.svg)

## Objective : 

  Write a program to design Classes for Student, Clerk, Professor.
  Each of these Classes should contain below mentioned attributes.
  Make sure proper class hierarchy is designed following the principle of inheritance. 
  Provide a mechanism to display the profile/detail of various kind of Object of these class. 
  
  (Student : Name, Age, Gender, Dept, Year) 
  (Clerk : Name, Age, Gender, WorkLoad, Salary) 
  (Professor : Name, Age, Gender, Dept, CourseLoad, Salary)

## Description of folders :

    -+[ Project ]
     |
     +--● Makefile
     |
     +--+[ build ]
     |  |
     |  +--+[ objects ]
        |  |  
        |  +--● person.o
        |  +--● clerk.o
        |  +--● prof.o
        |  +--● student.o
        |  +--● main.o

     |  +--+[ apps ]
     |  |
     |  |  +--● program (binary file)
     +--+[ include ]
     |  |
     |  +--● person.hpp
     |  +--● clerk.hpp
     |  +--● student.hpp
     |  +--● prof.hpp
     |
     +--+[ src ]
     |  |
     |  +--● person.cpp
     |  +--● clerk.cpp
     |  +--● student.cpp
     |  +--● prof.cpp
     |  +--● main.cpp



   # 1. build
       The object files produced by Makefile are stored here.
       To link them , use g++ 
       The executable a.out is now produced in the same folder.
       ./a.out executes the program.
   
   # 2. include
        Contains header files s
   
   # 3. src
        Contains implementation files and client file main.cpp
        The interaction with user is defined in main.cpp and the total area calculations are 
        done there itself.

## Compiler, IDE and OS specifications
    I used Linux subsytem for Windows.
    gcc version 7.3.0 (Ubuntu 7.3.0-27ubuntu1~18.04)
    Visual Studio Code was used for managing the project.
    
