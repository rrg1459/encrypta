class HomeController < ApplicationController

  def index
  	$inversion  = 1
  	$porcentaje = 87
  	@numero = Numero.first
  end

end
