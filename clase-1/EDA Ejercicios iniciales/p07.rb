def esPrimo(x)
	contMultiplos = 0
	for i in 1..x
		if (x % i == 0)
			contMultiplos = contMultiplos + 1
		end
	end
	return contMultiplos == 2
end

def respuesta (m, n)
	primos = ""
	for i in (m + 1)..(m + n)
		if (esPrimo(i))
			primos = primos + i.to_s + "," 
		end
	end
	puts primos
end

respuesta(0, 5) # 1,3
respuesta(10, 5) # 11, 13