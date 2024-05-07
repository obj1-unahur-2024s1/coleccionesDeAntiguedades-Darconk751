object casaDeAntiguedades {
	const artefactosYElementosAntiguos = #{}
	
	method artefactosYElementosAntiguos() = artefactosYElementosAntiguos
	
	method adquirirArtefactos(artefacto){
		artefactosYElementosAntiguos.add(artefacto)
	}
	method nuevoLoteAdquirido(conjunto){
		artefactosYElementosAntiguos.addAll(conjunto)
	}
	method tieneAlgunaAntiguedadStock() = ! self.artefactosYElementosAntiguos().isEmpty()
	method cantidadDeArtefactos() = artefactosYElementosAntiguos.size()
	method ultimoArtefactoAdquirido() = artefactosYElementosAntiguos.asList().last()
	method anosDeAntiguedad(cantidad) = cantidad
	method esMuyAntigua(artefactoAntiguo){
		return artefactoAntiguo.anosDeAntiguedad() > 100
	}
	method anosDeAntiguedadDelArtefacto(artefactoAntiguo, numero) =
		artefactoAntiguo.anosDeAntiguedad(numero)
	
	method restaurarElPrimerElemento(){
		artefactosYElementosAntiguos.asList().first().restaurar()
	}
	method restaurarElUltimoElemento(){
		artefactosYElementosAntiguos.asList().last().restaurar()
	}
	method restaurarEnPosicion(numero){
		artefactosYElementosAntiguos.asList().get(numero).restaurar()
	}
	method antiguedadEnMalEstado(artefactoAntiguo){
		if (artefactoAntiguo.estaEnMalEstado()){
			artefactoAntiguo.restaurar()
		}
	}
	method venderTodasLasAntiguedades(){
		artefactosYElementosAntiguos.clear()
	}
}

object antiguedad1 {
	var estaEnMalEstado = true
	method restaurar(){ 
		estaEnMalEstado = false
	}
	method estaEnMalEstado() = estaEnMalEstado 
}

object antiguedad2 {
	var estaEnMalEstado = true
	method restaurar(){ 
		estaEnMalEstado = false
	}
	method estaEnMalEstado() = estaEnMalEstado 
}

object antiguedad3 {
	var estaEnMalEstado = true
	method restaurar(){ 
		estaEnMalEstado = false
	}
	method estaEnMalEstado() = estaEnMalEstado 
}

object antiguedad4 {
	var estaEnMalEstado = true
	method restaurar(){ 
		estaEnMalEstado = false
	}
	method estaEnMalEstado() = estaEnMalEstado 
}
