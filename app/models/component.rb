class Component < ApplicationRecord
  validates :equipo, presence: {message: "Campo Obligatorio"}
  validates_numericality_of :cantidad, :only_integer => true
  validates_numericality_of :tiempo, :only_integer => true
  validates_numericality_of :potencia, :only_integer => true
end
