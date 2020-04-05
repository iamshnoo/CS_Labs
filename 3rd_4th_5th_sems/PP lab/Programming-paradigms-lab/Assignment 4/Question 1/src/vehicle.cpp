//vehicle.cpp

#include "vehicle.hpp" // header in local directory
#include <iostream> // header in standard library

using namespace transport;

// Default constructor
Vehicle::Vehicle(/* no args */)
{
    doors = 4;
    maxspeed = 120;
    acc = 10;
    price = 5;
    maker = "Honda";

}

// Parameterized constructor
Vehicle::Vehicle(int num_doors,int maxspeed_val,int acc_val,int price_vehicle,std::string maker_vehicle)
{
    doors = num_doors;
    maxspeed = maxspeed_val;
    acc = acc_val;
    price = price_vehicle;
    maker = maker_vehicle;

}

// Copy constructor
Vehicle::Vehicle(const Vehicle& old_vehicle)
{
    doors = old_vehicle.doors;
    maxspeed = old_vehicle.maxspeed;
    acc = old_vehicle.acc;
    price = old_vehicle.price;
    maker = old_vehicle.maker;

}

// Assignment operator
Vehicle& Vehicle::operator=(const Vehicle& other_vehicle)
{
    if ( this != &other_vehicle ) {
        doors = other_vehicle.doors;
        maxspeed = other_vehicle.maxspeed;
        acc = other_vehicle.acc;
        price = other_vehicle.price;
        maker = other_vehicle.maker;
    }
    return *this;

}

// Read data (use it in main.cpp)
void Vehicle::specs(/* no args */)
{
    int t_doors;
    int t_maxspeed;
    int t_acc;
    int t_price;
    std::string t_maker;

    std::cout << "Enter the specifications of the vehicle as prompted :" << std::endl;
    std::cout << "Doors : ";
    std::cin >>  t_doors;
    std::cout << "Maximum Speed : ";
    std::cin >> t_maxspeed;
    std::cout << "Acceleration (0-100) in secs : ";
    std::cin >> t_acc;
    std::cout << "Price : ";
    std::cin >> t_price;
    std::cout<< "Maker : ";
    std::cin >> std::ws; // consume any white-space characters
	getline(std::cin, t_maker);
    //std::cin >>  t_maker;

    doors = t_doors;
    maxspeed = t_maxspeed;
    acc = t_acc;
    price = t_price;
    maker = t_maker;

}

// Display data (use it in main.cpp)
void Vehicle::show_specs(/* no args */)
{
    std::cout << "The specifications of the vehicle are :" << std::endl;
    std::cout << "Doors : "<< doors << std::endl;
    std::cout << "Maximum Speed : "<<maxspeed << std::endl;
    std::cout << "Acceleration (0-100) in secs : " << acc << std::endl;
    std::cout << "Price : " << price << std::endl;
    std::cout<< "Maker : " << maker << std::endl;

}

// Destructor
Vehicle::~Vehicle(/* no args */)
{
    /* no explicit functionality*/
}