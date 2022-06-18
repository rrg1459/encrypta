class HomeController < ApplicationController

  def index
    @str = 'KABUMMM'
  end

  def cifra
    # byebug
    @str = 'Cifra'
    
    if $cifrado.present?
      @cifrado = $cifrado
      @encrypta = $encrypta
    else
      $cifrado = nil
      @encrypta = Encrypta.new
    end

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

  def procesa
    @encrypta = Encrypta.new(params.require(:encrypta).permit(:inicial, :clave, :mensaje))
    if @encrypta.valid?
      # redirect_to cifra_url("esto es yun mensaje de pruebas")
      # redirect_to cifra_url({ "inicial": @encrypta.inicial, "clave": @encrypta.clave, "mensaje": "esto es yun mensaje de pruebas"})
      $cifrado = 'aasaa'
      $encrypta = @encrypta
      redirect_to cifra_url
    else
      $encrypta = nil
      $cifrado = nil
      render 'cifra'
    end
  end

end
