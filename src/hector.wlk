import wollok.game.*
import plantas.*

object hector {
	var property posicion = game.at(2,2)
	method imagen() = "player.png"
	
	method sembrarMaiz() {
		if (game.getObjectsIn(posicion).size() == 1){
			game.addVisualIn(new Maiz(), posicion.clone())
			}
	}
	method sembrarTrigo() {
		if (game.getObjectsIn(posicion).size() == 1){
			game.addVisualIn(new Trigo(), posicion.clone())
			}
	}
	method sembrarTomaco() {
		if (game.getObjectsIn(posicion).size() == 1){
			game.addVisualIn(new Tomaco(), posicion.clone())
			}
	}
	
	method regar(planta) {
		planta.serRegado()
	}
}