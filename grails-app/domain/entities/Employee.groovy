package entities

class Employee extends Person {
  
	int s_code // Employee code, specific for each

    static constraints = {
   	
    	s_code(unique: true,
            min: 1, max: 100)

    }
}
