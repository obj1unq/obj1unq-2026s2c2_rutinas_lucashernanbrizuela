import rutinas.*

class Persona{

    var property peso
    var property tiempo

    method caloriasPorKilo()


    method validarRutina() {
      if(peso < 50){
        self.error("Error")
      }
    }

    method aplicarRutina(rutina) {
      self.validarRutina()
      peso -= rutina.caloriasConsumidas(self.tiempo()) / self.caloriasPorKilo()
    }


}


class PersonaSedentaria inherits Persona {

  override method caloriasPorKilo() {
    return 7000
  }

}