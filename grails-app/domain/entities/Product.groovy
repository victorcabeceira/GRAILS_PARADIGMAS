package entities

class Product {

	String name
    String manufacturer
    String type

    int quantity
	int stock

    double price

    static constraints = {
    	
        name(blank: false,
            size: 1..50)
    	
        manufacturer(blank: false,
            size: 1..50)

        quantity(min: 0)

        stock(min: 0)
        
    }

}
