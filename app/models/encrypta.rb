class Encrypta < ApplicationRecord

  validates_presence_of :clave, on: :create, message: "no puede estar en blanco"
  validates_presence_of :mensaje, on: :create, message: "no puede estar en blanco"
  
  validates_inclusion_of :inicial, :in => 236..632, message: 'debe estar entre 236 y 632'

  validate :minimo_10_caracteres

  def minimo_10_caracteres
    errors.add(:clave, "debe tener por lo menos 10 caracteres diferentes") if clave.split('').uniq.size < 10
  end

end

