Feature:
  Como jugador
  Quiero ser saludado por mi nombre
  Para sentir la aplicacion mas personalizada

Scenario:
  Given visito la pagina principal
  And ingreso "juan" en el campo "nombre"
  When presiono el boton "Saludar"
  Then deberia ver "Hola juan"
  