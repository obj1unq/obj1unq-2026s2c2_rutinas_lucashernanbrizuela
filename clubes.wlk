class Club {
  const predios

  method elMejorPredioPara(persona) {
    return predios.max({predio => predio.caloriasQuemadasPor(persona)})
  }

  method prediosTranquisPara(persona) {
    return predios.filter({predio => predio.tieneUnaRutinaQueLeHaceGastarMenosA(500,persona)})
  }

  method rutinasMasExigentesPara(persona) {
    return predios.map({predio => predio.rutinaMasExigentePara(persona)})

  }

}

class Predio {
  const rutinasPracticables 

  method caloriasQuemadasPor(persona) {
    return rutinasPracticables.sum({rutina => persona.calcularPerdida(rutina)})
  }

  method tieneUnaRutinaQueLeHaceGastarMenosA(calorias,persona) {
    return rutinasPracticables.any({rutina => persona.caloriasGastadasEn(rutina) < 500})
  }

  method rutinaMasExigentePara(persona) {
    return rutinasPracticables.max({rutina => persona.caloriasGastadasEn(rutina)})
  }
}

/*
- Las rutinas más exigentes del club para una persona: Es el conjunto
formado por la rutina más exigente de cada predio para esa persona. La rutina más 
exigente es la que más calorías le hace quemar a esa persona
*/