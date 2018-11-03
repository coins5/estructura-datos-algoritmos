#Checkear si es primo o no
def esPrimo(n)
    contador = 0
    for i in 1..n
        if (n % i == 0)
            contador = contador + 1
        end
    end

    return contador == 2
end

#Generar una lista simple de los numeros primos comprendidos entre 'x' e 'y'
def generarPrimos(x, y)
    lista = nil
    ultimoNodo = nil

    for i in x..y
        if (esPrimo(i))
            # Si es primo agregar a la lista
            nodo = [i, nil]
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

print generarPrimos(0, 13)