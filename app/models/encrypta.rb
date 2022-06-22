class Encrypta < ApplicationRecord

  attr_accessor :tipo

  include Hashid::Rails

  validates_presence_of :clave, on: :create, message: "no puede estar en blanco"
  validates_presence_of :mensaje, on: :create, message: "no puede estar en blanco"
  
  validates_inclusion_of :inicial, :in => 236..632, message: 'debe estar entre 236 y 632'

  validate :minimo_10_caracteres
  
  validate :integridad, if: -> { tipo == 'descifra' }

  def minimo_10_caracteres
    errors.add(:clave, "debe tener por lo menos 10 caracteres diferentes") if clave.split('').uniq.size < 10
  end

  def integridad
    mensaje.strip!
    if mensaje.size % 3 != 0
      errors.add(:mensaje, " cifrado está corrupto")
    else
      mensaje.split('').uniq.sort.each do |letra|
        errors.add(:mensaje, " cifrado está corrupto") if clave.split('').uniq.sort.join().exclude? letra
      end
    end
  end

end

