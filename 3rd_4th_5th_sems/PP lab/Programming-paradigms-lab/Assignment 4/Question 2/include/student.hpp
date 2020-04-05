//student.hpp

#include <person.hpp> // header in local directory
#include <string> // header in standard library
#ifndef STUDENT_H // include guard
#define STUDENT_H

using namespace human;

namespace student
{
    class Student : public Person {

        private:

            // Department
            std::string department;

            // Year
            int year; // year of study in college at present
            
        public:

            // Default constructor
            Student(/* no args */);

            // Parameterized constructor
            Student(std::string t_name,int t_age,std::string t_gender,
                                std::string t_department,int t_year);
            // Copy constructor
            Student(const Student& source);

            // Assignment operator
            Student& operator=(const Student &source);

            // Read data
            void read(/* no args */);

            // Display data
            void display(/* no args */);

            // Destructor
            ~Student(/* no args */);
        };
        
}

#endif /* STUDENT_H */