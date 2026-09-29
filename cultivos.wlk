import wollok.game.*
import personaje.*

class Maiz {
	var property image="corn_baby.png"
	var property position
	method teRegaron(){
			image="corn_adult.png"
	}
	 
	method teCosecharon(){
		if(self.esAdulto()){
		   game.removeVisual(self)
		   hector.añadirACosechados(self)
	    }
	}
	method esAdulto(){
		return image=="corn_adult.png"
	}
	method precio(){
		return 150
	}
	
}

class Trigo {
	var evolucion=0
	var property image="wheat_0.png"
	var property position

	method teRegaron(){	
		if(evolucion<2){
			evolucion=evolucion+1
			self.image("wheat_"+evolucion.toString()+".png")
		}else{
			self.image("wheat_0.png")
			evolucion=0
		}
	}
	method teCosecharon(){
		if(evolucion>=2){
		   game.removeVisual(self)
		   hector.añadirACosechados(self)
	    }
	}
	method precio(){
		return (evolucion-1)*100
	}

}

class Tomaco {
	var property position
	method image() {
		// TODO: hacer que devuelva la imagen que corresponde
		return "tomaco.png"
	}
	method teRegaron(){
		if(not self.estaEnElBorde()){
			position=position.up(1)
		}else{
			self.irAbajoDeTodo()
		}
	}

	method estaEnElBorde(){
		return position.y()==game.height()-1 ||position.x()==game.width()-1
	}

	method irAbajoDeTodo(){
		position=game.at(position.x(),0)
	}
	method teCosecharon(){
		game.removeVisual(self)
		hector.añadirACosechados(self)
	}

	method precio(){
		return 80
	}
}
