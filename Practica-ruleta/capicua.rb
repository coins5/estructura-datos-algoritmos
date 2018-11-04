def invertirDigitos(numero)
    resultado = 0
    
    while (numero > 0)
        resto = numero % 10
        numero = numero / 10
        resultado = resultado * 10 + resto
    end

    return resultado
end

def esCapicua(numero)
    return numero == invertirDigitos(numero)
end

def listaCapicua(numeros)
    lista = nil
    ultimoNodo = nil

    for i in 0..numeros.size-1
        n = numeros[i]
        nodo = [n, nil]

        if (esCapicua(n))
            if (lista == nil)
                lista = nodo
            else
                ultimoNodo[1] = nodo
            end
            ultimoNodo = nodo
        end
    end
    return lista
end
arrNumeros = [123, 121, 12321, 453, 90192, 909]

print listaCapicua(arrNumeros)



