require 'config.rb'

RSpec.describe Config do

    it'deberia devolver el punto cardinal que se ingreso'do
        config = Config.new
        expect(config.settings('e')).to eq('e')
    end

    it'deberia devolver error si el punto cardinal es distinto de norte, sur, este u oeste'do
        config = Config.new
        expect(config.settings('c')).to eq('error')
    end

    it'deberia devolver error si el tamanio del plano es negativo'do
        config = Config.new
        expect(config.settings("-1,2")).to eq('error')
    end

    it'deberia devolver el tamanio del plano si este es correcto'do
        config = Config.new
        expect(config.settings("1,2")).to eq(["1", "2"])
    end

    it'deberia devolver error si la posicion inicial del auto es negativa'do
        config = Config.new
        expect(config.settings("2,-2")).to eq('error')
    end

    it'deberia devolver la posicion inicial del auto si este es correcto'do
        config = Config.new
        expect(config.settings("5,9")).to eq(["5", "9"])
    end

    #it'deberia mostrar toda la configuracion si es que esta esta correcta 'do
     #   config = Config.new
      #  expect(config.settings('1,1,n')).to eq(["1", "1", "n"])
    #end


end


