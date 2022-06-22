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
    @str = 'Sistema de encriptamiento y desencriptamiento con dos claves'
  end

  def procesa_cifrado
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
    @str = 'todo'
    @url = procesa_todo_path
    valida_y_guarda
  end

  private

  def set_encrypta
    if params[:miniclave].present?
      @encrypta = Encrypta.find_by_hashid(params[:miniclave])
      if params[:action] == 'descifra'
        descifra_mensaje
      else
        cifra_mensaje
        @descifrado = @encrypta.mensaje if params[:action] == 'todo'
      end
    else
      @encrypta = Encrypta.new
    end
  end
  
  def cifra_mensaje
    frase = @encrypta.mensaje
    arreglo = frase.split('')
    ascii= []
    res = []
    cifrado = []
    inicial = @encrypta.inicial
    clave = @encrypta.clave
    clave = clave.split('').uniq[0..9].join
    arreglo2 = []
    frase.each_byte.with_index do |char, index|
      arreglo2.push char
      ascii[index] = char + inicial
    end
    frase.size.times do |index|
      res[index] = ascii[index] - inicial
      xx = ascii[index].to_s.split('').map(&:to_i)
      letter = "#{clave[xx[0]]}#{clave[xx[1]]}#{clave[xx[2]]}"
      cifrado.push letter
    end
    @cifrado = cifrado.join()
  end

  def descifra_mensaje
    ascii= []
    res = []
    cifrado = []
    descifrado = []
    inicial = @encrypta.inicial
    clave = @encrypta.clave.split('').uniq[0..9].join
    mensaje = @encrypta.mensaje.strip
    letra = []
    mensaje.split('').each do |x|
      letra.push x
      if letra.size == 3
        cifrado.push letra.join()
        letra = []
      end
    end

    cifrado.each do |letra_cifrada|
      print letra_cifrada
      xx = letra_cifrada.split('')
      letra = ("#{clave.index(xx[0])}#{clave.index(xx[1])}#{clave.index(xx[2])}".to_i) - inicial
      raise "Clave inicial o de salida no corresponden al mensaje cifrado" if letra < 0
      descifrado.push letra.chr
    end
    @descifrado = descifrado.join()

    rescue Exception => exc
      @encrypta.errors.add(:base, exc.message)
      @str = 'descifra'
      @url = procesa_descifrado_path
      render "descifra"
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
