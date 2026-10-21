import rutinas.*

class Persona{

    var property peso
    var property tiempo

    method pesoPerdido(rutina) {
      return rutina.caloriasConsumidas(self.tiempo()) / self.caloriasPorKilo()
    }

    method caloriasPorKilo()


    method validarRutina() {
      if(peso < 50){
        self.error("Error")
      }
    }

    method aplicarRutina(rutina) {
      self.validarRutina()
      peso - self.pesoPerdido(rutina)
    }


}


class PersonaSedentaria inherits Persona {

  override method caloriasPorKilo() {
    return 7000
  }

}