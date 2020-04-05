//vehicle.h
#include <string> // header in standard library
#ifndef VEHICLE_H // include guard
#define VEHICLE_H

namespace transport
{
    class Vehicle {

    private :

        // Features
        int doors;
        int maxspeed; // in kmph
        int acc; // time taken to go from 0 to 100 in seconds
        
        // Price
        int price; // in lakhs

        // Manufacturer
        std::string maker;

    public :

        // Default constructor
        Vehicle(/* no args */);

        // Parameterized constructor
        Vehicle(int t_doors,int t_maxspeed,int t_acc,int t_price,std::string t_maker);

        // Copy constructor
        Vehicle(const Vehicle& source);

        // Assignment operator
        Vehicle& operator=(const Vehicle &other);

        // Read data
        void specs(/* no args */);

        // Display data
        void show_specs(/* no args */);

        // Destructor
        ~Vehicle(/* no args */);
    };

}


#endif /* VEHICLE_H */