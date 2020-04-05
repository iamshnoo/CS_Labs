//person.hpp
#include <string>
#ifndef PERSON_H // include guard
#define PERSON_H

namespace human
{
    class Person {
        
        private :

            //Attributes of a person
            std::string name;
            int age;
            std::string gender;

        public :

            // Default constructor
            Person(/* no args */);

            // Parameterized constructor
            Person(std::string t_name,int t_age,std::string t_gender);

            // Assignment operator
            Person& operator=(const Person &other);
            
            // Read data
            void read();

            //Mechanism to display the profile of various kind of Object
            void display();//overload this suitably

            // Destructor
            ~Person(/* no args */);

    };
}

#endif /* PERSON_H */