//clerk.hpp

#include <person.hpp> // header in local directory
#include <string> // header in standard library
#ifndef CLERK_H // include guard
#define CLERK_H

using namespace human;

namespace cleric
{
    class Clerk : public Person {

        private:

            // Workload
            std::string position; //role of clerk

            // Salary
            int salary; // annual salary in lacs
            
        public:

            // Default constructor
            Clerk(/* no args */);

            // Parameterized constructor
            Clerk(std::string t_name,int t_age,std::string t_gender,
                            std::string t_position,int t_salary);
            // Copy constructor
            Clerk(const Clerk& source);

            // Assignment operator
            Clerk& operator=(const Clerk &source);

            // Read data
            void read(/* no args */);

            // Display data
            void display(/* no args */);

            // Destructor
            ~Clerk(/* no args */);
        };
        
}

#endif /* CLERK_H */