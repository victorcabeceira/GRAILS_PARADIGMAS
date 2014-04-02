package entities

class Product {

	String name
	String manufacturer
	String type
    String quantity
	double price

    static constraints = {
    	name(blank: false,
            size: 1..50)
    	manufacturer(blank: false,
            size: 1..50)
    	type(blank: false,
            inList: ["Liquid", "Bar"])
    	price(blank:false)
    }

}
