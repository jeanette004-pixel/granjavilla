import wollok.game.*
import cultivos.*

object hector{
	var property position = game.origin()
	const property image = "fplayer.png"
	var cosechados=[]
	var oro=0

	method movimientos(){
		keyboard.m().onPressDo({self.sembrarSemilla(new Maiz(position=self.position()))})
		keyboard.t().onPressDo({self.sembrarSemilla(new Trigo(position=self.position()))})
		keyboard.o().onPressDo({self.sembrarSemilla(new Tomaco(position=self.position()))})
		keyboard.r().onPressDo({self.regarPlanta(game.uniqueCollider(self))})
		keyboard.c().onPressDo({self.cosechar(game.uniqueCollider(self))})
		keyboard.v().onPressDo({self.vender()})
		keyboard.space().onPressDo({self.informacionSobrePlantasYOro()})
	
	}

	method sembrarSemilla(planta_){
		game.addVisual(planta_)
	}

	method regarPlanta(planta_){
		self.validarSiHayPlanta()
		planta_.teRegaron()
	}

	method validarSiHayPlanta(){
		if(game.colliders(self).isEmpty()){
			self.error("no hay planta")
		}
	}
	method cosechar(planta_){
		planta_.teCosecharon()
	}

	method añadirACosechados(planta_){
		cosechados.add(planta_)
	}
	method vender(){
		const plantaAVender = cosechados.anyOne()
		oro=oro+plantaAVender.precio()

	}

	method informacionSobrePlantasYOro(){
		game.say(self,"tengo"+oro.toString()+"monedas, y"+
			 cosechados.size().toString()+"plantas para vender" )
	}
}
