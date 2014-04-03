package entities

class Drug extends Product {

	String register
	String code

	static constraints = {
		type(blank: false,
			inList: ["Ético", "Genérico", "Similar"])
		register(blank: false,
			unique: true)
		code(blank: false,
			unique: true)
	}

}
