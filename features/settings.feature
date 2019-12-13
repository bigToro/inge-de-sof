Feature:
  Como jugador
  Quiero poner los limites de la cancha
  Para saber hasta donde ir

Scenario:
  Given visito la pagina home
  And meto "n" en el campo "punto_cardinal"
  When aprieto el boton "enviar"
  Then deberia mostrarme el punto cardinal "n"

Scenario:
  Given visito la pagina de home
  And ingreso "8" en campo "ancho"
  When aprieto "enviar"
  Then deberia mostrar el ancho "8"

Scenario:
  Given visito pagina de home
  And ingreso "4" en camp "alto"
  When aprieto el "enviar"
  Then deberia mostrar el alto "4"

  Scenario:
  Given visito pagina home
  And ingres "0" en el campoo "ejeX"
  When aprieto boton "enviar"
  Then deberia mostrar ejeX "0"

Scenario:
  Given la visito la pagina home
  And ingreso "0" en el camp "ejeY"
  When aprieto botn "enviar"
  Then deberia mostrar el ejeY "0"
  
  