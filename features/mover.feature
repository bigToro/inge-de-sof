Feature:

  Scenario:
  Given entro a la pagina de home
  And introduzco "wdwa" en el campo de "instrucciones"
  When golpeo el de "enviar"
  Then deberia mostrarme las instrucciones introducidas "wdwa"

  Scenario:
  Given entro en home
  And introduzco "wdwa" en campo "instrucciones"
  When golpeo el boton "enviar"
  Then deberia actualizar las instrucciones introducidas "wdwa"
