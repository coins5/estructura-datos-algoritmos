def factorial(x)
	result = 1
	for i in 1..x
		result = result * i
	end
	return result
end

def respuesta (x)
	result = 1 + x
	n = 10 # En la pregunta no se establece el valor de N
	for i in 2..10 
		result = result + (x**i * 1.0 / factorial(i))
	end
	puts result.to_s 
end

puts "Probando factoriales" 
puts factorial(2) # 2! -> 2
puts factorial(3) # 3! -> 6
puts factorial(4) # 4! -> 24
puts "======"

respuesta(3)
