module ApplicationHelper

	def color(monto)
		if monto > 0
			"verde"
		elsif monto < 0
			"rojo"
		else
			"gris"
		end
	end

	def resultado(letra)
		if letra == 'G'
			'Ganado'
		elsif letra == 'P'
			'Perdido'
		else
			'Empatado'
		end
	end

end
