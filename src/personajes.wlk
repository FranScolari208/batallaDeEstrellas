
object pamela {
	const personaje = "Doctora"
	var elementos = ["algodon","agua oxigenada","cinta de papel","cinta de papel"]
	var energia = 6000
	const gritoDeVictoria = "Aca paso la Pamela"
	
	method quitarElemento(elemento){
		elementos.remove(elemento)
	}
	method getEnergia(){
		return energia
	}
	method quitarEnergia(unaEnergia){
		energia -= unaEnergia
	}
	
	method getElementos(){
		return elementos
	}
	method lucharManoAMano(enemigo){
		energia += 400
	}
	method saleVictoriosa(){
		return gritoDeVictoria
	}
	method pelearContraEquipo(unEquipo){
		unEquipo.forEach({unPersonaje=>self.lucharManoAMano(unPersonaje)})
	}
}

/*------------------------------------------------------------------------ */


object pocardo{
	const personaje = "musicoTerapeuta"
	var elementos = ["guitarra","curitas","cotones"]
	var energia = 5600
	const gritoDeVictoria = "¡Siente el poder de la música!"
	
	method quitarElemento(elemento){
		elementos.remove(elemento)
	}
	method getEnergia(){
		return energia
	}
	method quitarEnergia(unaEnergia){
		energia -= unaEnergia
	}
	method getElementos(){
		return elementos
	}
	method lucharManoAMano(enemigo){
		energia += 500
	}
	 method saleVictoriosa(){
		return gritoDeVictoria
	}
	method pelearContraEquipo(unEquipo){
		unEquipo.forEach({unPersonaje=>self.lucharManoAMano(unPersonaje)})
	}
}

/*------------------------------------------------------------------------ */

object tulipan {
	const personaje = "la guerrera"
	var elementos = ["rastrillo","macetas","macetas","manguera"]
	var energia = 8400
	const gritoDeVictoria = "Hora de cuidar a las plantas"
	
	method quitarElemento(elemento){
		elementos.remove(elemento)
	}
	method getEnergia(){
		return energia
	}
	method quitarEnergia(unaEnergia){
		energia -= unaEnergia
	}
	
	method getElementos(){
		return elementos
	}
	
	method pelearContraEquipo(unEquipo){
		unEquipo.forEach({unPersonaje=>self.lucharManoAMano(unPersonaje)})
	}
	method lucharManoAMano(enemigo){
		enemigo.quitarEnergia(enemigo.getEnergia()* 0.5)
	}
	
	method saleVictoriosa(){
		return gritoDeVictoria
	}
}

/*------------------------------------------------------------------------ */


object toro{
	const personaje = "el tanque"
	var elementos = #{}
	var energia = 7800
	const gritoDeVictoria = "No se metan con el toro"
	 
	 method getEnergia(){
		return energia
	}
	method quitarEnergia(unaEnergia){
		energia -= unaEnergia
	}
	method quitarElemento(elemento){
		elementos.remove(elemento)
	}
	
	method getElementos(){
		return elementos
	}
	 
	 method lucharManoAMano(enemigo){
		elementos.add(enemigo.getElementos().last())
		enemigo.quitarElemento(enemigo.getElementos().last())
		enemigo.quitarEnergia(enemigo.getElementos().size()*200)
	}
	method pelearContraEquipo(unEquipo){
		unEquipo.forEach({unPersonaje=>self.lucharManoAMano(unPersonaje)})
	}
	method saleVictoriosa(){
		return gritoDeVictoria
	}
}