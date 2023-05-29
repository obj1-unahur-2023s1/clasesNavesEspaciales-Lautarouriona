class NaveEspacial {
	var velocidad = 0
	var direccion = 0
	var combustible = 0
	var property tranquilidad
	method acelerar(cuanto) {
		velocidad = (velocidad + cuanto).min(100000)
	}
	method desacelerar(cuanto) { 
		velocidad = (velocidad - cuanto).max(0)
 }
	method irHaciaElSol() { direccion = 10 }
	method escaparDelSol() { direccion = -10 }
	method ponerseParaleloAlSol() { direccion = 0 }
	method acercarseUnPocoAlSol(){direccion= direccion +1}
	method alejarseUnPocoDelSol(){direccion= direccion -1}
	method prepararViaje(){
		self.cargarCombustible(30000)
		self.acelerar(5000)
	}
	method cargarCombustible(cant){combustible=combustible +cant}
	method descargarCombustible(cant){combustible=combustible - cant}
    method estaTranquila(){
    	
    }
}
class NaveBaliza inherits NaveEspacial{
	var property color 
	method cambiarColorDeBaliza(colorNuevo){
		color = colorNuevo
	}	
	override method prepararViaje(){
		super()
		self.cambiarColorDeBaliza("verde")
		self.ponerseParaleloAlSol()
	}
}
class NavePasajeros inherits NaveEspacial{
 var property cantComida 
  var property cantBebida	
 	var property pasajeros
method cargarCantComida(cant){cantComida=cantComida + cant}
method descargarCantComida(cant){cantComida=cantComida - cant}
method cargarCantBebida(cant){cantBebida=cantBebida + cant}
method descargarCantBebida(cant){cantBebida=cantBebida - cant}

override method prepararViaje(){
	super()
	self.cargarCantComida(4*pasajeros)
	self.cargarCantBebida(6*pasajeros)
	self.acercarseUnPocoAlSol()
}
}

class NaveCombate inherits NaveEspacial{
	var  estado
	var  haymisiles
	var property mensajee
method ponerseVisible(){
	estado= "visible"
}
method ponerseInvisible(){
	estado = "invisible"
}
method estaInvisible(){return estado=="invisible"}
method desplegarMisiles(){
	haymisiles = true
}
method replegarMisiles(){
	haymisiles = false
}
method emitirMensaje(mensaje){
mensajee= mensaje
}
override method prepararViaje(){
    super()
	self.acelerar(15000)
	self.ponerseVisible()
	self.replegarMisiles()
	self.emitirMensaje("Saliendo en mision")
}
}
class NaveHospital inherits NavePasajeros{
	var property quirofanosListo
	method hayQuirofanoListo(){
		quirofanosListo = true
	}
}
class NaveHSigilosa inherits NaveCombate{







