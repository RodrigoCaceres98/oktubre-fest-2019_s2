import Marcas.*
import Personas.*
import Jarras.*
class Carpa {
	var property limeteDeGente
	var property tieneBandaTradicional = true 
	var property cervezaDisponible  
	var property personasEnLaCarpa = []
	
	method aEstaPersonaLeGustaEstaCarpa(persona) = persona.quiereEntrar(self)
	method cantidadDePersonasDentro()= personasEnLaCarpa.size()
	method dejaIngresar(persona) = self.cantidadDePersonasDentro() + 1 < self.limeteDeGente() and not persona.estaEbrio()
	method ingresarPersona(persona) {
		if(persona.puedeEntrar(self)){
			personasEnLaCarpa.add(persona)
		}
		else {throw new Exception(message ="Error carpa llena, esta ebrio    o no le gusta")
			  // throw "Error carpa llena..."
		}
	}
	method personaEstaEnCarpa(persona){
		return personasEnLaCarpa.contains(persona)
	}
	method servirJarra(persona,capacidadDeJarra){
		if (self.personaEstaEnCarpa(persona)){
			persona.comprarJarra(
				new Jarra(marca=cervezaDisponible,capacidadEnLitros=capacidadDeJarra))			
		}
		else{
			throw new Exception(message = "La persona no esta en la carpa")
		}
	}
	method cuantosEbriosEmpedernidosHay(){
		return personasEnLaCarpa.count({persona=> persona.esEbrioEmpedernido()})
	}
	method cantidadPatriotas(){
		return personasEnLaCarpa.count({persona=> persona.esPatriota()})
	}
	

}
