class Cerveza {
	var property lupulo
	var property paisDeOrigen  
	
	method graduacionAlcoholica()
	
}

class CervezaRubia inherits Cerveza {
	 var property graduacion 
	override method graduacionAlcoholica() = graduacion
}


class CervezaNegra inherits Cerveza {
	override method graduacionAlcoholica() = graduacionReglamentaria.nivelMin() + lupulo * 2
}
class CervezaRoja inherits CervezaNegra {
	override  method graduacionAlcoholica() = super() * 1.25
	
}
object graduacionReglamentaria {
	 
	method nivelMin()= 4
	method nivelMax() = 15
}
