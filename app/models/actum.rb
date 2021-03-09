class Actum < ApplicationRecord
    validates :dominio, :tipo_vehiculo, presence: true
    #agregar el resto de las validaciones
end
