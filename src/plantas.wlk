import hector.*

class Maiz {
	var property imagen = "corn_baby.png"
	method serRegado() = self.imagen("corn_adult.png")
}

class Trigo {
	var property imagen = "wheat_0.png"
	var etapa = 0
	method serRegado() {
		if (etapa == 0) {
			imagen = "wheat_1.png"
			etapa = 1
		} else if (etapa == 1) {
			imagen = "wheat_2.png"
			etapa = 2
		} else if (etapa == 2) {
			imagen = "wheat_3.png"
			etapa = 3
		} else {
			imagen = "wheat_0.png"
			etapa = 0
		}
	}
//	method imagen() = "wheat_" + etapa.toString() + ".png"
//	method regar() = {etapa = (etapa+1) %4}
}

class Tomaco {
	var property imagen = "tomaco.png"
	var posicion = hector.posicion()
	method serRegado() {
		game.removeVisual(self)
		game.addVisualIn(self, posicion.up(1))
	}
}