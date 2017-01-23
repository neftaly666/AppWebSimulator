class Component < ApplicationRecord
  validates :equipo, presence: {message: "Campo Obligatorio"}
end
