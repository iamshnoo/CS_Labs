//car.cpp

#include "car.hpp" // header in local directory
#include <iostream> // header in standard library

using namespace automobile;

// Default constructor
Car::Car(/* no args */) : Vehicle(/* no args */)
{
    color = "Red";
    seats = 5;
    model = "City";

}

// Parameterized constructor
Car::Car(int doors_count,int maxspeed_val,int acc_val,int price_val,std::string maker_name,
            std::string color_name,int seats_val,std::string model_name) : Vehicle(doors_count,maxspeed_val,price_val,acc_val,maker_name) 
{ 
    color = color_name;
    seats = seats_val;
    model = model_name;

}


// Copy constructor
Car::Car(const Car& old_car) : Vehicle(old_car) 
{ 
    color = old_car.color;
    seats = old_car.seats;
    model = old_car.model;
}

// Assignment operator
Car& Car::operator=(const Car &source)
{
    if ( this != &source ) {
        //upcast the reference to the object *this of Car class to type (Vehicle&) 
        static_cast<Vehicle&>(*this) = source; //uses Assignment opeator of Base class.
        color = source.color;
        seats = source.seats;
        model = source.model;
    }
    return *this;
           
}

// Read data (use it in main.cpp)
void Car::specs(/* no args */)
{
    std::string t_color;
    std::string t_model;
    int t_seats;
    Vehicle::specs();
    std::cout<< "Model : ";
    std::cin >> std::ws; // consume any white-space characters
	getline(std::cin, t_model);
    //std::cin >>  t_model;
    std::cout<< "Color : ";
    std::cin >> std::ws; // consume any white-space characters
	getline(std::cin, t_color);
    //std::cin >>  t_color;
    std::cout<< "Seats : ";
    std::cin >>  t_seats;

    color = t_color;
    model = t_model;
    seats = t_seats;
}

// Display data (use it in main.cpp)
void Car::show_specs(/* no args */)
{
    Vehicle::show_specs();
    std::cout << "Model : " << model << std::endl;
    std::cout << "Color : " << color << std::endl;
    std::cout << "Seats : " << seats << std::endl;

}

// Destructor
Car::~Car(/* no args */)
{
    /* no explicit functionality*/
}
