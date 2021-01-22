# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
