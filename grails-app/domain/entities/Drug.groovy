package entities

class Drug extends Product {

	String register
	String code
	Int quantity

	static constraints = {
		register(blank: false,
			unique: true)
		code(blank: false)
	}

}
