import personajes.*

object combates {
	const primerEquipo=[pamela,pocardo]
	const segundoEquipo=[toro,tulipan]
	
	method peleaDeEquipos(){
		primerEquipo.forEach({personaje=>personaje.pelearContraEquipo(segundoEquipo)})
		segundoEquipo.forEach({personaje=>personaje.pelearContraEquipo(primerEquipo)})
	}
	
	method energiaEquipoDespuesDeBatalla(equipo){
		return equipo.sum({personaje=>personaje.getEnergia()})
	} 
	method gritoDelEquipo(equipo){
		return equipo.map({personaje=>personaje.saleVictoriosa()})
	}
	method gritoDeEquipoGanador(){
		self.peleaDeEquipos()
		if (self.energiaEquipoDespuesDeBatalla(primerEquipo)>self.energiaEquipoDespuesDeBatalla(segundoEquipo)){
			return self.gritoDelEquipo(primerEquipo)
		}
		if (self.energiaEquipoDespuesDeBatalla(segundoEquipo)>self.energiaEquipoDespuesDeBatalla(primerEquipo)){
			return self.gritoDelEquipo(segundoEquipo)
		}
		else{
			return "empate"
		}
	}
}
