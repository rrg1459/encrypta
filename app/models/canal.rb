class Canal < ApplicationRecord

	has_many :opciones

	def asertividad
		opciones.size == 0 ? 0 : opciones.where(resultado: 'G').size.to_f * 100 / opciones.size
	end

	def balance
		saldo_ganadas - saldo_perdidas
	end

	def ganadas
		opciones.where(resultado: 'G').size
	end

	def perdidas
		opciones.where(resultado: 'P').size
	end

	def empatadas
		opciones.where(resultado: 'E').size
	end

  def saldo
    saldo_ganadas - saldo_perdidas
  end

  private

  def saldo_ganadas
    opciones.ganadas.sum("inversion * porcentaje ").to_f / 100
  end

  def saldo_perdidas
    opciones.perdidas.sum(:inversion).to_f
  end

end
