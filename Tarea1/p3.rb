def calcularNuevoSaldo(total, pago, tasaInteres)
	return (total - pago) * (1 + tasaInteres)
end

def calcularMeses(montoInicial, pagoMensual, tasaInteres)
	# El saldo inicial es el montoInicial, ya que la tasa de interes mensual se aplicaria para el siguiente mes
	nuevoSaldo = montoInicial
	meses = 0

	while nuevoSaldo >= 0
		meses = meses + 1
		nuevoSaldo = calcularNuevoSaldo(nuevoSaldo, pagoMensual, tasaInteres)
	end
	return meses
	
end

puts calcularMeses(3000, 250, 0.02)
puts calcularMeses(500, 250, 0.02)
