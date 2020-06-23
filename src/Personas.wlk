import Carpas.*
import Marcas.*
import Jarras.*
class Persona {
	var property peso = 0
	const  jarrasCompradas = [] 
	var property leGustaLaMusicaTradicional = true 
	var property nivelDeAguante 
	method comprarJarra(jarra){jarrasCompradas.add(jarra)}
	method estaEbrio()= (self.alcoholIngerido() * peso) > nivelDeAguante  

	method alcoholIngerido() = jarrasCompradas.sum({jarra=>jarra.contenidoDeAlcohol()})
	method leGustaLaMarcaDe(cerveza)
	method quiereEntrar(carpa) = self.leGustaLaMarcaDe(carpa.cervezaDisponible()) and 
	              self.leGustaLaMusicaTradicional() == carpa.tieneBandaTradicional()
	method puedeEntrar(carpa) = self.quiereEntrar(carpa) and carpa.dejaIngresar(self)
	method esEbrioEmpedernido(){
		return jarrasCompradas.all({jarra=> jarra.capacidadEnLitros() >= 1})
	}
	method nacionalidad()
	
	method cantidadJarrasCompradas(){
		return jarrasCompradas.size()
	}
	method esPatriota(){
		return jarrasCompradas.all({jarra=> jarra.marca().paisDeOrigen() == self.nacionalidad()})
	}
	
	
}

class Belgas inherits Persona {
	override method leGustaLaMarcaDe(cerveza) = cerveza.lupulo() > 4
	override method nacionalidad()= "belgica"
	
		
}
class Checos inherits Persona {
	override method leGustaLaMarcaDe(cerveza) = cerveza.graduacionAlcoholica() > 8
	override method nacionalidad()= "cheslovaquia"	
}
class Aleman inherits Persona {
	override method leGustaLaMarcaDe(cerveza) = true 
	override method quiereEntrar(carpa) = super(carpa) and carpa.cantidadDePersonasDentro().even()
	override method nacionalidad()= "alemania"
}
 


