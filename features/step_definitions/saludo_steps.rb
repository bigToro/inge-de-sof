  Given("visito la pagina principal") do
    visit '/'
  end
  
  Given("ingreso {string} en el campo {string}") do |valor,campo|
    fill_in(campo, :with => valor)
  end
  
  When("presiono el boton {string}") do |boton|
    click_button(boton)
  end
  
  Then("deberia ver {string}") do |mensaje|
    last_response.body.should =~ /#{mensaje}/m
  end