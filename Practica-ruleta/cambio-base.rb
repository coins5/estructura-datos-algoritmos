# Este codigo se puede comprobar con http://wims.unice.fr/wims/wims.cgi
def desdeBaseHastaDecimal(numero, base)
    # Utilizando el metodo de potencia sucesiva
    resultado = 0
    contador = 0
    while (numero > 0)
        resto = numero % 10
        numero = numero / 10
        resultado = resultado + (resto * base ** contador) # Solo se diferencia en esto al metodo de las divisiones
        contador = contador + 1
    end

    return resultado
end

def desdeDecimalHastBase(numero, base)
    # Utilizando el metodo de divisiones sucesivas
    resultado = ""
    contador = 0
    while (numero > 0)
        resto = numero % base
        numero = numero / base
        resultado = resto.to_s + resultado # Solo se diferencia en esto al metodo de las potencias
        contador = contador + 1
    end

    return resultado.to_i
end

def cambioBase(numero, baseActual, baseNueva)
    if (baseActual == baseNueva) # No hay nada que hacer aca
        return numero
    end

    if (baseNueva == 10)
        # Aplicar potencias sucesivas
        return desdeBaseHastaDecimal(numero, baseActual)
    end

    if (baseActual == 10)
        # Aplicar divisiones sucesivas
        return desdeDecimalHastBase(numero, baseNueva)
    end

    # Al llegar aqui, lo que se hace es convertir el numero a base 10 y luego a la nueva base
    numeroBase10 = desdeBaseHastaDecimal(numero, baseActual)
    return desdeDecimalHastBase(numeroBase10, baseNueva)
end

#Bases iguales
puts cambioBase(123, 5, 5) # 123

#Cambios a y desde base 10
puts cambioBase(123, 5, 10) # 38
puts cambioBase(123, 10, 5) # 443

# Bases diferentes menores a 10
puts cambioBase(123, 5, 6) # 102
puts cambioBase(123, 6, 5) # 201

# Bases diferentes, una de ellas mayor a 10
puts cambioBase(123, 12, 5) # 1141
puts cambioBase(123, 5, 12) # 32

# Bases diferentes, ambas mayores a 10
puts cambioBase(123, 12, 15) # B6 => 116 (A=10, B=11, C=12, D=13, E=14, F=15)
puts cambioBase(123, 15, 12) # 196
