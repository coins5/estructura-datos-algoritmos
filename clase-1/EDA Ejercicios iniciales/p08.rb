def esPar(x)
	return x % 2 == 0
end
def respuesta(n)
	result = 0.0
	for i in 1..n
		result = result + ((esPar(i) ? -1.0 : 1.0) / i)
	end
	puts result
end

respuesta(1) # 1
respuesta(2) # 0.5
respuesta(3) # 0.83333...