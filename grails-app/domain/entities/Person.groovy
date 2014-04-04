package entities

class Person {

	String firstName
	String lastName
	String cpf
	int age

	static constraints = {
		firstName(blank: false,
			size: 2..25)
		lastName(blank: false,
			size: 2..25)
		cpf(blank: false,
			cpf: true)
		age(min: 6, max: 120)
	}

}
