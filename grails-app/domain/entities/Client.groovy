package entities

class Client extends Person {

	String email

    static constraints = {
    	email(blank: false,
    		email: true)
    }

    // GORM Events examples.
    def onLoad(){
        log.info("Client loaded from database.")
    }
    
    def beforeInsert(){
         log.info("Client initially persisted onto the database.")
    }

    def beforeUpdate(){
         log.info("Before Client update.")
    }
    
    def beforeDelete(){
         log.info("Before Client deletion.")
    }
    
    def beforeValidate(){
         log.info("Before Client validation.")
    }

    def afterInsert() {
        log.info("After Client persisted onto the database.")
    }

    def afterUpdate(){
         log.info("After Client update.")
    }
    
    def afterDelete(){
         log.info("After Client deletion.")
    }

}
