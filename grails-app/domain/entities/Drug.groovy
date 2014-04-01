package entities

class Drug extends Product {

	String register
	String code

	static constraints = {
		register(blank: false,
			unique: true)
		code(blank: false)
	}

}
