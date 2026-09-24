import wollok.game.*
/*
object hector {
	var property position = game.center()
	const property image = "fplayer.png"

	method movimientos{
		keyboard.m().OnPressDo({self.sembrarSemilla(maiz)})
		keyboard.t().OnPressDo({self.sembrarSemilla(trigo)})
		keyboard.o().OnPressDo({self.sembrarSemilla(tomaco)})
		keyboard.r().OnPressDo({self.regarPlanta(game.uniqueCollider(self))})
		//en wpgm
	}

	method sembrarSemilla(planta_){
	//antes	planta_.position(position)
	//	game.addVisual()
		game.addVisual(new Maiz(position=self.position()))
	}

	method regarPlanta(planta_){
		self.validarSiHayPlanta()
		planta_.teRegaron()
		//self.cultivosDebajo().foreach({c=>c.teRegaron()})
	}

	method validarSiHayPlanta(){
		if(not self.hayPlanta()){
			game.error("no hay planta")
		}
	}
	method cultivosDebajo(){
	    return game.colliders(self)
	}
	method validarSiHayPosicionVacia(){
		if(not self.cultivosDebajo().isEmpty()){
			self.error("ya hay un cultivo")
		}
	}

}
*/