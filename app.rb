require 'sinatra'
require './lib/Auto'
require 'rubygems'


  $punto_cardinal
  $ancho
  $alto
  $ejeX
  $ejeY
  $instrucciones
  #$auto = Auto.new($ejeX,$ejeY,$punto_cardinal,$instrucciones)

  get '/' do
      @nombre = params{:nombre}
      erb :saludador
  end

  get '/saludar' do
      @nombre_jugador = params[:nombre]
      erb :principal
  end

  get '/verTodo' do
    # @auto.ejeX2 = @ejeX
    # @auto.ejeY2 = @ejeY
    # @auto.punto_cardinal2 = @punto_cardinal 
    # @auto.instrucciones2 = @instrucciones
    # @auto.simular()

    @punto_cardinal = params[:punto_cardinal]
    @ancho = params[:ancho].to_i
    @alto = params[:alto].to_i
    @ejeX = params[:ejeX].to_i
    @ejeY = params[:ejeY].to_i
    @instrucciones = params[:instrucciones]

    # @punto_cardinal2 = auto.getPunto_cardinal()
    # @ejeX2 = getEjeX().to_i
    # @ejeY2 = getEjeY().to_1

    if (@ancho.to_i>-1 && @alto.to_i>-1 && @ejeX.to_i>-1 && @ejeY.to_i>-1 && @punto_cardinal == 'n' || @punto_cardinal == 's' || @punto_cardinal == 'e' || @punto_cardinal == 'o')
      erb :mirar
    else
      erb :error
    end
  end

  def avanzar()
    if  @punto_cardinal == 'n'
        @ejeY+=1
    elsif @punto_cardinal == 's'
        @ejeY-=1
    elsif @punto_cardinal == 'e'
        @ejeX+=1
    elsif @punto_cardinal == 'o'
        @ejeX-=1
    end
  end

  def derecha()
    if  @punto_cardinal == 'n'
        @punto_cardinal = 'e'
    elsif @punto_cardinal == 's'
        @punto_cardinal = 'o'
    elsif @punto_cardinal == 'e'
        @punto_cardinal = 's'
    elsif @punto_cardinal == 'o'
        @punto_cardinal = 'n'
    end
  end

  def izquierda()
    if  @punto_cardinal == 'n'
        @punto_cardinal = 'o'
    elsif @punto_cardinal == 's'
        @punto_cardinal = 'e'
    elsif @punto_cardinal == 'e'
        @punto_cardinal = 'n'
    elsif @punto_cardinal == 'o'
        @punto_cardinal = 's'
    end
  end

  public def simular()
    @instrucciones.each_char{ |c|
        case c
        when 'a'
            avanzar()
        when 'd'
            derecha()
        when 'i'
            izquierda()
        end
    }
  end