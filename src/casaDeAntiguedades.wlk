object casaDeAntiguedades {
	const artefactosYElementosAntiguos = []
	var estaEnMalEstado = true
	
	method artefactosYElementosAntiguos() = artefactosYElementosAntiguos
	
	method adquirirArtefactos(artefacto){
		artefactosYElementosAntiguos.add(artefacto)
	}
	method nuevoLoteAdquirido(conjunto){
		artefactosYElementosAntiguos.addAll(conjunto)
	}
	method tieneAlgunaAntiguedadStock() = ! self.artefactosYElementosAntiguos().isEmpty()
	method cantidadDeArtefactos() = artefactosYElementosAntiguos.size()
	method ultimoArtefactoAdquirido() = artefactosYElementosAntiguos.last()
	method anosDeAntiguedad(cantidad) = cantidad
	method esMuyAntigua(artefactoAntiguo){
		return artefactoAntiguo.anosDeAntiguedad() > 100
	}
	method restaurar(){
		estaEnMalEstado = false
	}
	method anosDeAntiguedadDelArtefacto(artefactoAntiguo, numero) =
		artefactoAntiguo.anosDeAntiguedad(numero)
	
	method restaurarElPrimerElemento(){
		artefactosYElementosAntiguos.first().restaurar()
	}
	method restaurarElUltimoElemento(){
		artefactosYElementosAntiguos.last().restaurar()
	}
	method restaurarEnPosicion(numero){
		artefactosYElementosAntiguos.get(numero).restaurar()
	}
	method estaEnMalEstado() = estaEnMalEstado
	method cambioDeEstado(){
	 estaEnMalEstado = ! estaEnMalEstado
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
