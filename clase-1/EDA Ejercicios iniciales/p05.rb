def divide(x, y)
	# no especifican que tipo de division, asumimos que es division entera
	result = x

	while result >= y
		result = result - y
	end

	if (x < y) 
		result = 0
	end
	puts "Resultado: " + result.to_s
end

divide(4,5) # 12
