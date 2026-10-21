class Rutina {
  var intensidad
  const tiempo
  var descanso

  method caloriasConsumidas(){
    return 100 * (tiempo - descanso) * intensidad
  } 

}

class Running inherits Rutina{
}


class Maraton inherits Rutina {
  
}

class Remo inherits Rutina {
  
}

class RemoDeCompetición inherits Rutina{
  
}

/*
- La intensidad es un valor configurable
- Si el tiempo de ejercicio es mayor que 20, 
entonces el descanso es de 5 minutos; de lo contrario, de 2 minutos.

**Ejemplo:** Suponer la actividad *correr en la playa* como una actividad de running de intensidad 1.2
- Al practicarse por 5 minutos consumirá `100 * (5 -2) * 1.2 = 360`
- Al practicarse por 90 minutos consumirá `100 * (90-5) * 1.2 = 10200`
*/