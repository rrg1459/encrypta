class HomeController < ApplicationController

  def index
    @str = 'Programa de cifrado de mensajes'
    $cifrado = nil
    $encrypta = nil
  end

  def cifra
    # byebug
    @str = 'Cifra'
    if params[:limpia]
      $cifrado = nil
      $encrypta = nil
    end
    
    if $cifrado.present?
      @cifrado = $cifrado
      @encrypta = $encrypta
    else
      $cifrado = nil
      @encrypta = Encrypta.new
    end

  end

  def descifra
    @str = 'Descifra'
    if params[:limpia]
      $cifrado = nil
      $encrypta = nil
    end
    
    if $cifrado.present?
      @cifrado = $cifrado
      @encrypta = $encrypta
    else
      $cifrado = nil
      @encrypta = Encrypta.new
    end
  end

  def todo
    @str = 'Cifra y descifra'
  end

  def explica
    @str = 'Explica'
  end

  def procesa_cifrado
    @encrypta = Encrypta.new(params.require(:encrypta).permit(:inicial, :clave, :mensaje))
    @str = 'Cifra'
    if @encrypta.valid?
      $cifrado = 'aasaa'
      $encrypta = @encrypta
      redirect_to cifra_url
    else
      $encrypta = nil
      $cifrado = nil
      render 'cifra'
    end
  end

  def procesa_descifrado
    @encrypta = Encrypta.new(params.require(:encrypta).permit(:inicial, :clave, :mensaje))
    @str = 'Cifra'
    if @encrypta.valid?
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
