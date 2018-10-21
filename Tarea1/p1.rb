def calcular(numero)
	respuesta = 0
	for i in 1..numero
		respuesta = respuesta + (i / (i + 1.0))
	end
	return respuesta
end

puts calcular(2)
puts calcular(3)