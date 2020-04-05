//car.hpp

#include <vehicle.hpp> // header in local directory
#include <string> // header in standard library
#ifndef CAR_H // include guard
#define CAR_H

using namespace transport;

namespace automobile
{
    class Car : public Vehicle{

        private:

            // Color
            std::string color;

            // NumberOfSeats
            int seats; // number of people who can sit including driver

            // Model
            std::string model;
            
        public:

            // Default constructor
            Car(/* no args */);

            // Parameterized constructor
            Car(int t_doors,int t_maxspeed,int t_acc,int t_price,std::string t_maker,
                std::string t_color,int t_seats,std::string t_model);
            // Copy constructor
            Car(const Car& source);

            // Assignment operator
            Car& operator=(const Car &source);

            // Read data
            void specs(/* no args */);

            // Display data
            void show_specs(/* no args */);

            // Destructor
            ~Car(/* no args */);
        };
        
}

#endif /* CAR_H */