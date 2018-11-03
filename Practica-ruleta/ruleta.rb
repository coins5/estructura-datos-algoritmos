# genera la ruleta tal cual la explico el profesor
def generarRuletaFija()
    # Elementos de la ruleta
    nodoA = [nil, 'A', nil]
    nodoB = [nil, 'B', nil]
    nodoR = [nil, 'R', nil]
    nodoM = [nil, 'M', nil]
    nodoZ = [nil, 'Z', nil]
    nodoC = [nil, 'C', nil]

    # Relacionando los nodos
    # No se toca la posicion 1, porque ahi esta el valor
    # La posicion 0 es el valor anterior, para las listas circulares, tiene que apuntar al ultimo elemento, en este caso, nodoC
    nodoA[0] = nodoC
    nodoA[2] = nodoB

    nodoB[0] = nodoA
    nodoB[2] = nodoR

    nodoR[0] = nodoB
    nodoR[2] = nodoM

    nodoM[0] = nodoR
    nodoM[2] = nodoZ

    nodoZ[0] = nodoM
    nodoZ[2] = nodoC

    # La posicion 2, debe apuntar al primer elemento, para este caso, el nodoA
    nodoC[0] = nodoZ
    nodoC[2] = nodoA

    return nodoA
end

# Genera un ruleta personalizada a partir de un array
def generarRuletaPersonalizada(arr)
    lista = nil
    nodoInicial = nil

    ultimoNodoLeido = nil

    # En este for, creamos una lista doblemente enlazada. Y almacenamos el primer elemento en 'nodoInicial'
    for i in 0..arr.size-1
        nodo = [nil, arr[i], nil]
        if (lista == nil)
            nodoInicial = nodo
            lista = nodoInicial
        else
            nodo[0] = ultimoNodoLeido
            ultimoNodoLeido[2] = nodo        
        end
        ultimoNodoLeido = nodo
    end
    # La posicion 0 del nodoInicial debe apuntar al ultimo
    nodoInicial[0] = ultimoNodoLeido
    # La posicion 2 del ultimo nodo, debe apuntar al nodo inicial
    ultimoNodoLeido[2] = nodoInicial

    return nodoInicial
end

def avanzarPosiciones(n, _ruleta)
    contador = 1
    nodo = _ruleta

    # Generando primer resultado
    result = nodo[1] # A
    nodo = nodo[2] # NodoB

    # Si n = 1. Este while, no va a dar ninguna vuelta y pasara de frente al return de abajo
    while (contador < n)

        # Obtenemos un resultado y lo almacenamos en result
        result = nodo[1]

        # Seguimos con el siguiente nodo
        nodo = nodo[2]
        contador = contador + 1
    end

    # Retornando el ultimo valor de la ruleta
    return result
end 

def generarTablaDePuntajes (resultadosPosibles)
    result = []
    for i in 0..resultadosPosibles.size-1
        result << 0
    end
    return result
end

def asignarPuntaje(resultado, puntajes, resultadosPosibles)

    indiceDelResultado = nil

    for i in 0..resultadosPosibles.size-1
        if (resultado == resultadosPosibles[i])
            indiceDelResultado = i
            break
        end
    end

    # Solo se cambia el valor del puntaje si se encuentra el indice del resultado
    if (indiceDelResultado != nil)
        puntajes[indiceDelResultado] = puntajes[indiceDelResultado] + 1
    end

    return puntajes

end

def verPuntajes (giros)
    resultadosPosibles = ['A', 'B', 'R', 'M', 'Z', 'C']
    # ruleta = generarRuletaFija()
    ruleta = generarRuletaPersonalizada(resultadosPosibles)
    puntajes = generarTablaDePuntajes(resultadosPosibles)
    
    for i in 0..giros.size-1
        resultado = avanzarPosiciones(giros[i], ruleta)
        puntajes = asignarPuntaje(resultado, puntajes, resultadosPosibles)
    end

    puts "Imprimiendo resultados"
    for i in 0..puntajes.size-1
        puts resultadosPosibles[i] + ": " + puntajes[i].to_s
    end
end

girosRuleta = [10, 12, 18, 23]
verPuntajes(girosRuleta)

# Probando generacion de tablas de puntaje
# resultadosPosibles = ['A', 'B', 'R', 'M', 'Z', 'C']
# print  generarTablaDePuntajes (resultadosPosibles)

# Probando la ruleta
# ruleta = generarRuletaFija()
# puts avanzarPosiciones(3, ruleta)