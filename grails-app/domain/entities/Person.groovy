package entities

class Person {

	String firstName
	String lastName
	String cpf

	static constraints = {
		firstName(blank: false,
			size: 2..25)
		lastName(blank: false,
			size: 2..25)
		cpf(blank: false,
			cpf: true)
	}

}
