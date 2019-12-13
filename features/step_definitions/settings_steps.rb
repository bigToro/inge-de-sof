# #deberia ver el punto cardinal cuando lo ingreso
Given("visito la pagina home") do
  visit '/saludar'
end

Given("meto {string} en el campo {string}") do |valor, campo|
  fill_in campo, :with => valor
end

When("aprieto el boton {string}") do |string|
  click_button(string)
end

Then("deberia mostrarme el punto cardinal {string}") do |mesaje|
  last_response.body.should =~ /#{mesaje}/m
end


#deberia ver el ancho de la cancha cuando la ingreso
Given("visito la pagina de home") do
  visit '/saludar'
end

Given("ingreso {string} en campo {string}") do |valor, campo|
  fill_in campo, :with => valor
end

When("aprieto {string}") do |string|
  click_button(string)
end

Then("deberia mostrar el ancho {string}") do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
  end




    #deberia ver el alto de la cancha cuando la ingreso
Given("visito pagina de home") do
  visit '/saludar'
end

Given("ingreso {string} en camp {string}") do |valor, campo|
  fill_in campo, :with => valor
end

When("aprieto el {string}") do |string|
  click_button(string)
end

Then("deberia mostrar el alto {string}") do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
  end




  #deberia ver la posicion en x del auto
Given("visito pagina home") do
  visit '/saludar'
end

Given("ingres {string} en el campoo {string}") do |valor, campo|
  fill_in campo, :with => valor
end

When("aprieto boton {string}") do |string|
  click_button(string)
end

Then("deberia mostrar ejeX {string}") do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
  end


  #deberia ver la posicion en y del auto
Given("la visito la pagina home") do
  visit '/saludar'
end

Given("ingreso {string} en el camp {string}") do |valor, campo|
  fill_in campo, :with => valor
end

When("aprieto botn {string}") do |string|
  click_button(string)
end

Then("deberia mostrar el ejeY {string}") do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
  end