def pares_impares(x)
	contPares = 0
	contImpares = 0
	for i in 0..x
		if (i % 2 == 0)
			contPares = contPares + 1
		else
			contImpares = contImpares + 1
		end
	end
	puts "Conteo pares: " + contPares.to_s
	puts "Conteo impares: " + contImpares.to_s
end

pares_impares(5) # pares: 0, 2, 4 | impares: 1, 3, 5
pares_impares(10) # pares: 0, 2, 4, 6, 8, 10 | impares: 1, 3, 5, 7, 9
