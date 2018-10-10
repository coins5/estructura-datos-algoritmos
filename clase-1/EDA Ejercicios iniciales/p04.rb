def multiplica(x,y)
	result = 0
	for i in 1..y
		result = result + x
	end
	puts "Resultado: " + result.to_s
end

multiplica(3,4) # 12
