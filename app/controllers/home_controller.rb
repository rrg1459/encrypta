class HomeController < ApplicationController

  before_action :set_encrypta, only: %i[ cifra descifra todo ]

  def index
    @str = 'Programa de cifrado de mensajes'
  end

  def cifra
    @str = 'cifra'
    @url = procesa_cifrado_path
    @descifrado = nil
  end

  def descifra
    @str = 'descifra'
    @url = procesa_descifrado_path
    @cifrado = nil
  end

  def todo
    @str = 'cifra y descifra'
    @url = procesa_todo_path
  end

  def explica
    @str = 'explica'
  end

  def procesa_cifrado
    # byebug
    @str = 'cifra'
    @url = procesa_cifrado_path
    valida_y_guarda
  end

  def procesa_descifrado
    @str = 'descifra'
    @url = procesa_descifrado_path
    valida_y_guarda
  end

  def procesa_todo
    # byebug
    # @str = 'cifra y descifra'
    @str = 'todo'
    @url = procesa_todo_path
    valida_y_guarda
  end

  private

  def set_encrypta

    # byebug
    # #
    # #! creo que aqui va el codigo que cifra o la llamada al metodo
    # #
    if params[:miniclave].present?
      @cifrado = 'este mensaje esta cifrado'
      @descifrado = 'este mensaje esta descifrado'
      # @descifrado = nil if @str == 'cifrado'
      # @cifrado = nil if @str == 'descifrado'
      @encrypta = Encrypta.find_by_hashid(params[:miniclave])
    else
      @encrypta = Encrypta.new
    end
  end

  def valida_y_guarda
    @encrypta = Encrypta.new(encrypta_params)
    if @encrypta.valid?
      @encrypta.save
      redirect_to action: @str, miniclave: @encrypta.hashid
    else
      render @str
    end
  end

  def encrypta_params
    params.require(:encrypta).permit(:inicial, :clave, :mensaje).merge(tipo: @str)
  end

end
