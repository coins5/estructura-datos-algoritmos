def crearLista()
    lista = nil
    ultimoNodo = nil

    for i in 1..10
        nodo = [nil, i, nil]
        if (lista == nil)
            lista = nodo
        else
            nodo[0] = ultimoNodo
            ultimoNodo[2] = nodo
        end
        ultimoNodo = nodo
    end
    return lista
end

def agregarComienzo(valor, list)
    nodo = [nil, valor, list]
    list[0] = nodo
    list = nodo
    return list
end

def agregarFinal(valor, list)
    nodoAgregar = [nil, valor, nil]
    if (list == nil)
        return nodoAgregar
    end

    nodo = list[2]
    ultimoNodo = nil

    while (nodo != nil)
        ultimoNodo = nodo
        nodo = nodo[2]
    end

    ultimoNodo[2] = nodoAgregar
    nodoAgregar[0] = ultimoNodo
    return list
end

def agregarPosicionN(valor, posicion, list)
    # Esta vez, usaremos posicion en base cero, quiere decir que sigue esta secuencia: 0, 1, 2
    contador = 1
    nodoAgregar = [nil, valor, nil]
    if (list == nil)
        return nodoAgregar
    end

    nodo = list[2]
    ultimoNodo = nil

    while (nodo != nil)
        if (contador == posicion)
            # El nodo que va a entrar, debe apuntar hacia adelante y atras
            nodoAgregar[2] = nodo # Hacia adelante
            nodoAgregar[0] = ultimoNodo # Hacia atras

            # El nodo anterior debe apuntar a nuestro nuevo nodo
            ultimoNodo[2] = nodoAgregar # Nodo anterior, hacia adelante
            
            # El nodo que viene, debe apuntar hacia atra
            nodo[0] = nodoAgregar # Nodo entrante, hacia atras del nodo que sigue
            break
        end
    
        ultimoNodo = nodo
        nodo = nodo[2]
        contador = contador + 1
    end
    return list
end

def eliminarPosicionN(posicion, list)
    contador = 1

    if (list == nil)
        return nil
    end

    nodo = list[2]
    ultimoNodo = nil

    while (nodo != nil)
        if (contador == posicion)
            ultimoNodo[2] = nodo[2] # El hacia adelante del ultimo nodo leido debe apuntar al siguiente nodo del actual
            nodo[2][0] = ultimoNodo # El hacia atras del siguiente nodo debe apuntar al ultimo nodo leido
            break
        end
    
        ultimoNodo = nodo
        nodo = nodo[2]
        contador = contador + 1
    end
    return list
end

def eliminarUltimo(list)
    # Este parece sospechosamente igual al de la lista enlazada simple (._. ")
    if (list == nil)
        return nil
    end

    nodo = list[2]
    ultimoNodo = nil

    while (nodo[2] != nil)
        ultimoNodo = nodo
        nodo = nodo[2]
    end
    
    ultimoNodo[2] = nil
    return list
end
begin
def eliminarPrimer(list)
    if (list == nil)
        return nil
    end
    list[2][0] = nil # Eliminamos la referencia al primer elemento dentro del segundo elemento de la lista
    return list[2] # devolvemos el segundo elemento
end
end

def recorrerLista(list)
    if (list == nil)
        return nil
    end

    # Obteniendo el primer valor y nodo de la lista
    nodo = list[2]
    valor = list[1]
    ultimoNodo = nil
    while (nodo != nil)
        
        print valor
        print '; '

        ultimoNodo = nodo
        valor = nodo[1]
        nodo = nodo[2]
        
    end
    # Imprimiendo el ultimo valor
    print valor
    print " | Recorriendo en reversa: "

    nodo = ultimoNodo[0]
    valor = ultimoNodo[1]
    nodoAnterior = nil
    while (nodo != nil)
        print valor
        print '; '

        nodoAnterior = nodo
        valor = nodo[1]
        nodo = nodo[0]

    end
    # Imprimiendo el primer valor
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
