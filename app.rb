require 'sinatra'
require './lib/auto'

  $punto_cardinal
  $ancho
  $alto
  $ejeX
  $ejeY
  $instrucciones
  $auto

  get '/' do
      @nombre = params{:nombre}
      erb :saludador
  end

  get '/saludar' do
      @nombre_jugador = params[:nombre]
      erb :principal
  end

  get '/verTodo' do
    @punto_cardinal = params[:punto_cardinal]
    @ancho = params[:ancho]
    @alto = params[:alto]
    @ejeX = params[:ejeX].to_i
    @ejeY = params[:ejeY].to_i
    @instrucciones = params[:instrucciones]
    @auto = Auto.new(@ejeX.to_i, @ejeY.to_i,@punto_cardinal.to_s,@instrucciones.to_s)
    if (@ancho.to_i>-1 && @alto.to_i>-1 && @ejeX.to_i>-1 && @ejeY.to_i>-1 && @punto_cardinal == 'n' || @punto_cardinal == 's' || @punto_cardinal == 'e' || @punto_cardinal == 'o')
      erb :mirar
    else
      erb :error
    end
 end

public def simularTodo
  return @auto.simular(@auto.direcciones.to_s)
end