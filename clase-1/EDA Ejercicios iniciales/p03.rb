def generaFibonacci (n)
	# La serie de Fibonacci, consiste en sumar el numero anterior a la secuencia actual
	serie = "0"
	numeroAnterior = 0
	for i in 1..n-1
		serie = serie + "," + (i + numeroAnterior).to_s
		numeroAnterior = i
	end
	puts serie
end

generaFibonacci(8) # 0, 1, 1, 2, 3, 5, 8, 13
