import 
import Marcas.*
class Jarra {
	var property capacidadEnLitros = 0
	var property marca 
	
	
	method contenidoDeAlcohol(){return capacidadEnLitros * (marca.graduacionAlcoholica() * 0.1) } 
}
   