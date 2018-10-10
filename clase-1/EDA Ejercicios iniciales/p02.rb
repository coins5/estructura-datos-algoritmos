def determinaBisiesto(year)
	
	# Año bisiesto es el divisible entre 4, salvo que sea año secular -último de cada siglo, terminado en «00»-,
	# en cuyo caso también ha de ser divisible entre 400.
	
# se determinan dos grupos de años: los no seculares y los seculares. Los primeros han de ser múltiplos de 4,
# mientras que los segundos habrán de serlo de 400.n. 2​ De esta manera se eliminan como bisiestos a 3 de cada 4 años seculares .
# Por ejemplo, en el periodo 2001-2400 tenemos tres seculares comunes (2100, 2200, 2300) y uno bisiesto (2400)

	if (year % 4 == 0)
		if (year % 100 == 0 && year % 400 == 0)
			puts "Es normal"
		else
			puts "Es bisiesto"
		end
	else 
		puts "Es normal"	
	end

end

determinaBisiesto(1984) # Bisiesto

determinaBisiesto(1984) # Bisiesto
determinaBisiesto(2000) # Normal
determinaBisiesto(1800) # Bisiesto
