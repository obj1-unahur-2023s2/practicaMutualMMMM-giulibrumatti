import actividades.*

class Socio{
	var maxDeAct
	const property actividades = []
	//preguntar 1..maxDeAct
	
	method adoradorDelSol() = actividades.all({a => a.esParaBroncearse()})
	
	method actividadesForzadas() = actividades.filter({a => a.implicaEsfuerzo()}).asList()
	
	
	method registrarActividad(nuevaActividad){
		
		if(actividades.size() > maxDeAct){
			self.error("No puede registrar esta actvidad. Superaste el máximo de actividades")
		}
		actividades.add(nuevaActividad)
	}
	
	
	
}
