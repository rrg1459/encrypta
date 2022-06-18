class HomeController < ApplicationController

	def index
		@str = 'KABUMMM'
	end

  def cifra
		@str = 'Cifra'
  end

  def descifra
		@str = 'Desifra'
  end

  def todo
		@str = 'Cifra y descifra'
  end

  def explica
		@str = 'Explica'
  end

end
