class Auto

  public def initialize(ejeX,ejeY,punto_cardinal, instrucciones)
    @ejeX = ejeX
    @ejeY = ejeY
    @punto_cardinal = punto_cardinal
    @instrucciones = instrucciones
  end

  def getEjeX()
    return @ejeX
end

def getEjeY()
    return @ejeY
end

def getPunto_cardinal()
    return @punto_cardinal
end

def getInstrucciones()
    return @instrucciones
end

def ejeX=(ejeX)
    @ejeX = ejeX
end

def ejeY=(ejeY)
    @ejeY = ejeY
end

def punto_cardinal=(punto_cardinal)
    @punto_cardinal = punto_cardinal
end

def instrucciones=(instrucciones)
    @instrucciones = instrucciones
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

end
