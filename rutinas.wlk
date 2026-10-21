/*
ejecutar tests
wollok test -f gimnasia.wtest -d rutinas --skipValidations
*/

class Rutina {
  //var intensidad
  

  method caloriasConsumidas(tiempo){
    return 100 * (tiempo - self.calcularDescanso(tiempo)) * self.intensidad()
  } 

  method calcularDescanso(tiempo)

  method intensidad() 

}

class Running inherits Rutina{

  var property intensidad 


  override method calcularDescanso(tiempo){
    if(tiempo > 20){
      return 5
    }else{
      return 2
    }
  }
}

class Maraton inherits Running {

  override method caloriasConsumidas(tiempo) {
    return super(tiempo) * 2
  }


}

class Remo inherits Rutina {

  override method intensidad() {
    return 1.3
  }

  override method calcularDescanso(tiempo) {
    return tiempo/5
  }
  
}

class RemoDeCompetición inherits Remo{
  override method intensidad() {
    return 1.7
  }

  override method calcularDescanso(tiempo) {
    return (super(tiempo) - 3 ).max(2)
  }

}



