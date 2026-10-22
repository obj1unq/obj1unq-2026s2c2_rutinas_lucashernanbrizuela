import rutinas.*

class Persona{

    var property peso
    var property tiempo

    method caloriasPorKilo()

    method restriccion(rutina)

    method validarRutina(rutina) {
      if(self.restriccion(rutina)){
        self.error("Error")
      }
    }

    method aplicarRutina(rutina) {
      self.validarRutina(rutina)
      peso -= self.calcularPerdida(rutina) 
    }

    method calcularPerdida(rutina) {
      return rutina.caloriasConsumidas(self.tiempo()) / self.caloriasPorKilo() 
    }

    method caloriasGastadasEn(rutina) {
      return rutina.caloriasConsumidas(self.tiempo())
    }

}


class PersonaSedentaria inherits Persona {

  override method caloriasPorKilo() {
    return 7000
  }

  override method restriccion(rutina){
    return peso < 50
  }

}

class PersonaAtleta inherits Persona {

  override method tiempo() {
    return 90
  }

  override method caloriasPorKilo() {
    return 8000
  }

  override method restriccion(rutina){
    return rutina.caloriasConsumidas(self.tiempo()) <= 10000
  }

  override method calcularPerdida(rutina){
    return super(rutina) - 1
  }



}


/*

Las personas atletas tienen una variación en su fórmula para
calcular el peso al practicar una rutina, porque siempre pierden
un kilo menos que el resto de las personas 

- Formula de peso que se pierde al hacer una rutina: ` (calorias que baja la rutina / kilosPorCaloría) - 1 ` 
*Nota:* La primera parte es igual que la fórmula para todas las personas

- La cantidad de calorias-por-kilo de las personas atletas es 8000

- El tiempo que ejercita una rutina es siempre 90.

- Solo realizan una rutina si las calorías que consumiría al realizarla es mayor a 10000

*/