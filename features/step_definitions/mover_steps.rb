#Deberia ver los movimientos que hice
Given("entro a la pagina de home") do
    visit '/saludar'
  end
  
  Given("introduzco {string} en el campo de {string}") do |valor, campo|
    fill_in campo, :with => valor
  end
  
  When("golpeo el de {string}") do |nomb|
    click_button(nomb)
  end
  
  Then("deberia mostrarme las instrucciones introducidas {string}") do |mesaje|
    last_response.body.should =~ /#{mesaje}/m
  end
  

#Deberia actualizar la posicion del auto
  Given("entro en home") do
    visit '/saludar'
  end
  
  Given("introduzco {string} en campo {string}") do |valor, campo|
    fill_in campo, :with => valor
  end
  
  When("golpeo el boton {string}") do |nomb|
    click_button(nomb)
  end
  
  Then("deberia actualizar las instrucciones introducidas {string}") do |mesaje|
    last_response.body.should =~ /#{mesaje}/m
  end