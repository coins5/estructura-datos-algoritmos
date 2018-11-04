def crearLista()
    lista = nil
    ultimoNodo = nil

    for i in 1..10
        nodo = [i, nil]
        if (lista == nil)
            lista = nodo
        else
            ultimoNodo[1] = nodo
        end
        ultimoNodo = nodo
    end
    return lista
end

def agregarComienzo(valor, list)
    nodo = [valor, list]
    list = nodo
    return list
end

def agregarFinal(valor, list)
    if (list == nil)
        return [valor, nil]
    end

    nodo = list[1]
    while (nodo != nil)
        if (nodo[1] == nil)
            nodo[1] = [valor, nil]
            break
        end
        nodo = nodo[1]
    end
    return list
end

def agregarPosicionN(valor, posicion, list)
    # Esta vez, usaremos posicion en base cero, quiere decir que sigue esta secuencia: 0, 1, 2
    contador = 1

    if (list == nil)
        return [valor, nil]
    end

    nodo = list[1]
    ultimoNodo = nil

    while (nodo != nil)
        if (contador == posicion)
            ultimoNodo[1] = [valor, nodo]
            break
        end
    
        ultimoNodo = nodo
        nodo = nodo[1]
        contador = contador + 1
    end
    return list
end

def eliminarPosicionN(posicion, list)
    contador = 1

    if (list == nil)
        return nil
    end

    nodo = list[1]
    ultimoNodo = nil

    while (nodo != nil)
        if (contador == posicion)
            ultimoNodo[1] = nodo[1]
            break
        end
    
        ultimoNodo = nodo
        nodo = nodo[1]
        contador = contador + 1
    end
    return list
end

def eliminarUltimo(list)
    if (list == nil)
        return nil
    end

    nodo = list[1]
    ultimoNodo = nil
    while (nodo[1] != nil)
        ultimoNodo = nodo
        nodo = nodo[1]
    end
    ultimoNodo[1] = nil
    return list
end

def eliminarPrimer(list)
    if (list == nil)
        return nil
    end
    return list[1]
end

def recorrerLista(list)
    if (list == nil)
        return nil
    end

    # Obteniendo el primer valor y nodo de la lista
    nodo = list[1]
    valor = list[0]

    while (nodo != nil)
        
        print valor
        print '; '

        valor = nodo[0]
        nodo = nodo[1]
        
    end
    # Imprimiendo el ultimo valor
    print valor
end

lista = crearLista()
puts ""
puts "Creando lista"
print lista

puts ""
puts ""
puts "Agregando elemento al comienzo"
lista = agregarComienzo(0, lista)
print lista

puts ""
puts ""
puts "Agregando elemento al final"
lista = agregarFinal(11, lista)
print lista

puts ""
puts ""
puts "Agregando X en la posicion 2 (Sera el tercer elemento de la lista)"
lista = agregarPosicionN("X", 2, lista)
print lista

puts ""
puts ""
puts "Eliminando X ubicado en la posicion 2"
lista = eliminarPosicionN(2, lista)
print lista

puts ""
puts ""
puts "Eliminando ultimo elemento"
lista = eliminarUltimo(lista)
print lista

puts ""
puts ""
puts "Eliminando primer elemento"
lista = eliminarPrimer(lista)
print lista

puts ""
puts ""
puts "Recorriendo lista"
recorrerLista(lista)

