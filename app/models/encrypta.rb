class Encrypta < ApplicationRecord

  attr_accessor :tipo

  include Hashid::Rails

  validates_presence_of :clave, on: :create, message: "no puede estar en blanco"
  validates_presence_of :mensaje, on: :create, message: "no puede estar en blanco"
  
  validates_inclusion_of :inicial, :in => 236..632, message: 'debe estar entre 236 y 632'

  validate :minimo_10_caracteres
  
  validate :integridad, if: -> { self.tipo == 'descifra' }

  def minimo_10_caracteres
    errors.add(:clave, "debe tener por lo menos 10 caracteres diferentes") if clave.split('').uniq.size < 10
  end

  def integridad
    # byebug
  end

end

