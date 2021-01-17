class Opcion < ApplicationRecord

	belongs_to :par
	belongs_to :reloj
	belongs_to :canal

	scope :ganadas,  -> { where(resultado: 'G')}
	scope :perdidas, -> { where(resultado: 'P')}

	def saldo
		if resultado == 'G'
			inversion.to_f * porcentaje / 100
		elsif resultado == 'P'
			inversion * (-1)
		else
			0
		end
	end

	def self.saldo_total
		Numero.first.fondo.to_f + saldo_ganadas - saldo_perdidas
	end

	private

	def self.saldo_ganadas
		ganadas.sum("inversion * porcentaje ").to_f / 100
	end

	def self.saldo_perdidas
		perdidas.sum(:inversion).to_f
	end

end
