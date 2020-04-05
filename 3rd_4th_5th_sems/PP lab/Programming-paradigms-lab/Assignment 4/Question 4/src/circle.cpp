//circle.cpp

#include "circle.hpp" // header in local directory
#include <iostream> // header in standard library

using namespace circle2D;

// Read data (use it in main.cpp)
void Circle::read(/* no args */)
{
    double t_radius;
    std::cout<< "Enter the measurement parameters for a circle as prompted . " << std::endl;
    std::cout<< "Radius : ";
    std::cin >>  t_radius;

    radius = t_radius;
}

// To calculate area of a rectangle object
double Circle::area(/* no args */)
{
    double t_result;
    t_result = (22*radius*radius)/7;
    return t_result;
}

void Circle::show(/* no args */)
{
    std::cout << "Circle :: " ;
    std::cout<< "Radius : ";
    std::cout << radius;
}

Circle::~Circle(/* no args */)
{

}