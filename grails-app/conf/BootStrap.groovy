import entities.*

class BootStrap {

    def init = { servletContext ->
    	log.info("Initializing bootstrap.");

    	new Client(firstName:'Joao', lastName:'Silva', cpf:'04723883126', age:'25', email:'joao@email.com').save(flush:true)
    	new Drug(name:'Benalet', manufacturer:'Pfizer', type:'Ethic', quantity:'20', stock:'30', price:'10.00', register:'RegisterBenalet', code:'CodeBenalet', pack:'Blister').save(flush:true)
    	new Perfumery(name:'Egeo', manufacturer:'Boticario', type:'Eau de Parfum', quantity:'2', stock:'100', price:'75.00', fragrancy:'Smooth').save(flush:true)
    	new Employee(firstName:'Alamino', lastName:'Pacheco', cpf:'02877173135', age:'19', s_code:'5').save(flush:true)
    }
    def destroy = {
    }
}
