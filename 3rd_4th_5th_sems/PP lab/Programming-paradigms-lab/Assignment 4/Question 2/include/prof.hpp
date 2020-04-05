//prof.hpp

#include <person.hpp> // header in local directory
#include <string> // header in standard library
#ifndef PROF_H // include guard
#define PROF_H

using namespace human;

namespace proffesor
{
    class Prof : public Person {

        private:

            // Department
            std::string dep;

            // Courseload
            std::string courselist; //courses taught

            // Salary
            int sal; // annual salary in lacs
            
        public:

            // Default constructor
            Prof(/* no args */);

            // Parameterized constructor
            Prof(std::string t_name,int t_age,std::string t_gender,
                            std::string t_dep,std::string t_courselist,int t_salary);
            // Copy constructor
            Prof(const Prof& source);

            // Assignment operator
            Prof& operator=(const Prof &source);

            // Read data
            void read(/* no args */);

            // Display data
            void display(/* no args */);

            // Destructor
            ~Prof(/* no args */);
        };
        
}

#endif /* PROF_H */