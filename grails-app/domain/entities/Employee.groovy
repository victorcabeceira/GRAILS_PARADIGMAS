package entities

class Employee extends Person {
  
	/*String login          //Código para login na tela de cadastro
	int l_password*/

	int s_code              //Código de vendedor, específico para cada vendedor e não tem nenhum relacionamento

    static constraints = {
    	/*login(blank: false,
			size: 2..10)
    	l_password(blank: false)*/
    	
    	s_code(blank: false,
    		unique: true, size: 1..100) 
    }
}
