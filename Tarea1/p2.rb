def calcularDivisores(numero)
	divisores = []
	for i in 1..numero
		if (numero % i == 0)
			divisores << i
		end
	end
	return divisores
end

print calcularDivisores(5)
puts "--------------------"
print calcularDivisores(24)
puts ""