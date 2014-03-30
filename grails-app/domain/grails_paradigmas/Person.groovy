package grails_paradigmas

class Person {

	String firstName
	String lastName
	String cpf

    static constraints = {
    	firstName(blank: false, nullable: false)
    	lastName(blank: false, nullable: false)
    	cpf(blank: false, nullable: false, cpf: true)
    }
}
