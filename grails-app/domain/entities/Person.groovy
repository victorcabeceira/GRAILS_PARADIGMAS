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
			size: 11..14)
		age(blank: false,
			size: 6..120)
	}

}
