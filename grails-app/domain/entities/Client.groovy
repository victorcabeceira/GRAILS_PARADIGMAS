package entities

class Client extends Person {

	String email

    static constraints = {
    	email(blank: false,
    		email: true)
    }

}
