class Par < ApplicationRecord

	has_many :opciones

	mount_uploader :imagen, ImagenUploader

	def asertividad
		opciones.size == 0 ? 0 : opciones.where(resultado: 'G').size.to_f * 100 / opciones.size
	end

	# def balance
	# 	opciones.saldo
	# end

	def ganadas
		opciones.where(resultado: 'G').size
	end

	def perdidas
		opciones.where(resultado: 'P').size
	end

	def empatadas
		opciones.where(resultado: 'E').size
	end

end
