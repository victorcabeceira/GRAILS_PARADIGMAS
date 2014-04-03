package entities

class Product {

	String name
	
    String manufacturer
	
    String type
    
    int quantity
	
    double price
    
    int stock

    static constraints = {
    	
        name(blank: false,
            size: 1..50)
    	
        manufacturer(blank: false,
            size: 1..50)
    	
        quantity(blank: false)
        
        price(blank: false)
        
        stock(blank: false)

    }

}
