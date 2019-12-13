class Robot
    def settings(config)
        coordenadas = config.split(/[\n,]/)

        if config.length == 1
            if(setCardinalPoint(config))
                return 'error'
            else
                return config
            end
        else
            set1Setting(coordenadas)
        end

        # elsif config.length == 2
        #     set1Setting(coordenadas)
            
        # else
        #     setFullSettings(coordenadas)
        # end
    end


    def setCardinalPoint(config)
        if config == 'n' || config == 's' || config == 'e' || config == 'o'
            return false

        else
            return true
        end
    end

    def isNegativeField(coordenadas)
        if coordenadas[0].to_i < 0 || coordenadas[1].to_i < 0
            return true
        else
            return false
        end 
    end

    def set1Setting(coordenadas)
        if(isNegativeField(coordenadas))
            return 'error'
        else
            return coordenadas
        end    
    end

    #def setFullSettings(coordenadas)
     #   if isNegativeField(coordenadas) || setCardinalPoint(coordenadas[2])
      #      return 'error'
       # else
        #    return coordenadas
        #end
   # end

end