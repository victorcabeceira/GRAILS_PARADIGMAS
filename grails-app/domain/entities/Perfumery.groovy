package entities

class Perfumery extends Product {

	String fragrancy

	static constraints = {
		type(blank: false,
			inList: ["Perfume extract", "Esprit de Parfum", "Eau de Parfum", "Eau de Toilette", "Eau de Cologne", "Perfume mist", "Splash"])
		fragrancy(blank: false,
			inList: ["Suave", "Doce", "Sem Manchas"])
	}

}
