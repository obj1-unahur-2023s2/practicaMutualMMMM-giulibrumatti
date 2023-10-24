
class Actividad{
	const property idiomas = []
	var cantidadDias = 1
	var esParaBroncearse = false
	var implicaEsfuerzo = false
	
	method cantidadDias() = cantidadDias
	
	method implicaEsfuerzo() = implicaEsfuerzo
	
	method esParaBroncearse() = esParaBroncearse
	
	method agregarIdioma(nuevoIdioma)
	
   	method agregarIdiomas(listaIdiomas)

}

class ClaseDeGim inherits Actividad{
	
	override method implicaEsfuerzo() = true 
	
	override method esParaBroncearse() = false
	
	override method idiomas() = "español"
}

class Viaje inherits Actividad{
	
	override method agregarIdioma(nuevoIdioma){
       idiomas.add(nuevoIdioma)
	}
	
   	override method agregarIdiomas(listaIdiomas){
        idiomas.addAll(listaIdiomas)
	}
    
    method esInteresante() = idiomas.size() > 0
}

class ViajeDePlaya inherits Viaje{
	const property largoPlaya
	
	override method cantidadDias() = largoPlaya / 500
	
	override method implicaEsfuerzo() = largoPlaya > 1200
	
	override method esParaBroncearse() = !super()

}

class ViajeExcursionACiudad inherits Viaje{
	var cantidadAtracciones
	
	override method cantidadDias() = cantidadAtracciones / 2
	
	override method implicaEsfuerzo() = cantidadAtracciones > 5 && cantidadAtracciones < 8
		
	override method esInteresante() = super() || cantidadAtracciones == 5
}

class ViajeExcursionTropical inherits ViajeExcursionACiudad {

   override method cantidadDias()  =  super() + 1

   override method esParaBroncearse() = !super()
   
}   


class ViajeSalidaTrekking inherits Viaje{

    var kmSendero
    var diasSolXAnio

    override method cantidadDias() = kmSendero / 50

    override method implicaEsfuerzo() = kmSendero > 80

    override method esParaBroncearse() = diasSolXAnio > 200 || (diasSolXAnio.between(100,200) &&  kmSendero > 120)

    override method esInteresante() = super() && diasSolXAnio > 140

}



