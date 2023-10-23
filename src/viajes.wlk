class Viaje{
	var idioma
	var implicaEsfuerzo
	var cantidadDias
	var esParaBroncearse = true
	
	method idioma() = idioma
	
	method implicaEsfuerzo()
	
	method cantidadDias()
	
	method esParaBroncearse() = esParaBroncearse
}

class ViajeDePlaya inherits Viaje{
	const property largoPlaya
	
	override method cantidadDias() = largoPlaya / 500
	
	override method implicaEsfuerzo() = largoPlaya > 1200

}

class ViajeExcursionACiudad inherits Viaje{
	var cantidadAtracciones
	
	override method cantidadDias() = cantidadAtracciones / 2
	
	override method implicaEsfuerzo() = cantidadAtracciones > 5 && cantidadAtracciones < 8
	
	override method esParaBroncearse() = false
}