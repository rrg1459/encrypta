# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Opcion.destroy_all

Canal.destroy_all

Canal.create({nombre: 'Mi analisis'})

Numero.destroy_all

Numero.create({ inversion: 1, fondo: 100, porcentaje: 87, canal_id: Canal.first.id})

Reloj.destroy_all

Reloj.create({minuto:  1})
Reloj.create({minuto:  2})
Reloj.create({minuto:  5})
Reloj.create({minuto: 10})

Par.destroy_all

Par.create({ nombre: "AUD/CAD" })
Par.create({ nombre: "AUD/NZD" })
Par.create({ nombre: "CAD/JPY" })
Par.create({ nombre: "EUR/GBP" })
Par.create({ nombre: "EUR/USD" })
Par.create({ nombre: "GBP/JPY" })
Par.create({ nombre: "NZD/USD" })
Par.create({ nombre: "USD/NOK" })
Par.create({ nombre: "AUD/CHF" })
Par.create({ nombre: "AUD/USD" })
Par.create({ nombre: "EUR/AUD" })
Par.create({ nombre: "EUR/JPY" })
Par.create({ nombre: "GBP/AUD" })
Par.create({ nombre: "GBP/NZD" })
Par.create({ nombre: "USD/CHF" })
Par.create({ nombre: "AUD/JPY" })
Par.create({ nombre: "CAD/CHF" })
Par.create({ nombre: "EUR/CAD" })
Par.create({ nombre: "EUR/NZD" })
Par.create({ nombre: "GBP/CAD" })
Par.create({ nombre: "GBP/USD" })
Par.create({ nombre: "USD/JPY" })

#
# Datos de prueba
#

Canal.create({nombre: 'Copy Trading'})
Canal.create({nombre: 'Señales Gratis opciones'})
Canal.create({nombre: 'Chat Inter Instituto Trading'})
Canal.create({nombre: 'Chat Inter Tradinh V2'})
Canal.create({nombre: 'INVESTING CENTER'})
Canal.create({nombre: 'INTER TRADING'})
Canal.create({nombre: 'Señales Gratis Opciones Binarias'})

total_relojes = Reloj.all.size
total_pares   = Par.all.size
total_canales = Canal.all.size

for ind in(1..365)
	dias = rand(0..3)
	next if dias.zero?
	for dia in(1..dias)
		rand_resultado = ((ind%10).zero?) ? rand(1..3) : rand(1..2)
		rand_resultado =  rand(1..2) if rand_resultado == 2 && (ind%5).zero?# esto es para que favorezco a los ganados
		if rand_resultado == 1 
			resultado = 'G'
		elsif rand_resultado == 2
			resultado = 'P'
		else
			resultado = 'E'
		end
		porcentaje = 70 + rand(1..18)

		Opcion.create({
					juliano:    Opcion.all.size + 100001,
					traded_at:  Time.now - ind.days,
					resultado:  resultado,
					porcentaje: porcentaje,
					tipo:       (rand(1..2) == 1) ? 'compra' : 'venta',
					inversion:  rand(1..2),
					par_id:     rand(1..total_pares),
					reloj_id:   rand(1..total_relojes),
					canal_id:   rand(1..total_canales)
			})
	end
end

# Opcion.where("juliano < 0").delete_all

puts
puts 'total de relojes...: ' + total_relojes.to_s
puts 'total de pares.....: ' + total_pares.to_s
puts 'total de canales...: ' + total_canales.to_s
puts 'total de opciones..: ' + Opcion.all.size.to_s
puts