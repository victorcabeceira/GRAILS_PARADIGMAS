package entities

class Drug extends Product {

	String register
	String code
	String pack

	static constraints = {
		
		type(blank: false,
			inList: ["Ethic", "Generic", "Similar"])
		
		register(blank: false,
			unique: true)
		
		code(blank: false,
			unique: true)

		pack(blank: false,
			inList: ["Liquid", "Blister", "Effervescent", "Powder"])
	}

}
