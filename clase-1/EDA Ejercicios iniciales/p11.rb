def cambiarBase (n, b)
	dividendo = n
	resultado = ""
	while (dividendo >= b)
		#puts dividendo
		residuo = dividendo % b
		dividendo = dividendo / b
		resultado = resultado + residuo.to_s
	end

	if (dividendo != 0)
		resultado = resultado + dividendo.to_s
	end

	puts resultado.reverse!
end

cambiarBase(2, 2) # 10
cambiarBase(3, 2) # 11
cambiarBase(23, 2) # 10111