Feature:
  Como jugador
  Quiero poner los limites de la cancha
  Para saber hasta donde ir

  Scenario:
  Given visitoo la pagina home
  And metoo~ "w" en el campo "punto_cardinal"
  When aprieto el botoonn "enviar"
  Then deberiaa salir "error"

  Scenario:
  Given vvisito la pagina de home
  And iingreso "-8" en campo "ancho"
  When aaprieto "enviar"
  Then ddeberia mostrar el ancho "error"

  Scenario:
  Given viisito pagina de home
  And inngreso "-4" en camp "alto"
  When apprieto el "enviar"
  Then deeberia mostrar el alto "error"

  Scenario:
  Given vissito pagina home
  And inggres "-1" en el campoo "ejeX"
  When aprrieto boton "enviar"
  Then debberia mostrar ejeX "error"

  Scenario:
  Given la visiito la pagina home
  And ingrreso "-1" en el camp "ejeY"
  When apriieto botn "enviar"
  Then debeeria mostrar el ejeY "-1"
  
  