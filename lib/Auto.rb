class Auto

    public def initialize(x,y,punto, direcciones)
      @ejeX = x
      @ejeY = y
      @punto_cardinal = punto
      @direcciones = direcciones
    end
  
    def direcciones
      @direcciones
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
  
    public def simular(direcciones)
      @direcciones.to_s.each_char{ |c|
          case c
          when 'a'
              avanzar()
          when 'd'
              derecha()
          when 'i'
              izquierda()
          end
      }
      return @ejeX.to_i, @ejeY.to_i, @punto_cardinal.to_s
  
    end
  end