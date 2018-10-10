def adivinaNumero(tipo, resto5)
	# tipo: i -> impar | p -> par
	# resto5: El resto de dividir entre 5
=begin
posibles valores:
N: Numero 
i, p -> impar y par
resto5 -> El resto de dividir por 5
N | i | p | resto5
0       x | 0
1   x     | 1
2       x | 2
3   x     | 3
4       x | 4
5   x     | 0
6       x | 1
7   x     | 2
8       x | 3
9   x     | 4
=end
	if tipo == "p"
		if (resto5 % 2 == 0 )
			puts resto5
		else
			puts resto5 + 5
		end
	else # tipo i
		if (resto5 % 2 == 0 )
			puts resto5 + 5
		else
			puts resto5 
		end
	end
end

adivinaNumero("i", 3) # 3
adivinaNumero("p", 3) # 8
adivinaNumero("i", 4) # 9
adivinaNumero("p", 4) # 4

adivinaNumero("i", 2) # 7
adivinaNumero("i", 0) # 5