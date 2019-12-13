  #deberia ver el error si el punto cardinal es erroneo cuando lo ingreso
  Given("visitoo la pagina home") do
    visit '/saludar'
  end
  
  Given("metoo~ {string} en el campo {string}") do |valor, campo|
    fill_in campo, :with => valor
  end
  
  When("aprieto el botoonn {string}") do |nomb|
    click_button(nomb)
  end
  
  Then("deberiaa salir {string}") do |mesaje|
    last_response.body.should =~ /#{mesaje}/m
  end

      #deberia ver error si el ancho de la cancha es negativo
      Given("vvisito la pagina de home") do
        visit '/saludar'
      end
      
      Given("iingreso {string} en campo {string}") do |valor, campo|
        fill_in campo, :with => valor
      end
      
      When("aaprieto {string}") do |string|
        click_button(string)
      end
      
      Then("ddeberia mostrar el ancho {string}") do |mensaje|
        last_response.body.should =~ /#{mensaje}/m
        end

#deberia ver error si el alto de la cancha es negativa
Given("viisito pagina de home") do
    visit '/saludar'
  end
  
  Given("inngreso {string} en camp {string}") do |valor, campo|
    fill_in campo, :with => valor
  end
  
  When("apprieto el {string}") do |string|
    click_button(string)
  end
  
  Then("deeberia mostrar el alto {string}") do |mensaje|
    last_response.body.should =~ /#{mensaje}/m
    end

    #deberia ver error si la posicion en x del auto es negativa
    Given("vissito pagina home") do
        visit '/saludar'
      end
      
      Given("inggres {string} en el campoo {string}") do |valor, campo|
        fill_in campo, :with => valor
      end
      
      When("aprrieto boton {string}") do |string|
        click_button(string)
      end
      
      Then("debberia mostrar ejeX {string}") do |mensaje|
        last_response.body.should =~ /#{mensaje}/m
        end
    
    
        #deberia ver error si la posicion en y del auto es negativa
      Given("la visiito la pagina home") do
        visit '/saludar'
      end
      
      Given("ingrreso {string} en el camp {string}") do |valor, campo|
        fill_in campo, :with => valor
      end
      
      When("apriieto botn {string}") do |string|
        click_button(string)
      end
      
      Then("debeeria mostrar el ejeY {string}") do |mensaje|
        last_response.body.should =~ /#{mensaje}/m
        end