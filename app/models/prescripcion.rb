class Prescripcion < ActiveRecord::Base
  belongs_to :anticoagulantes
  belongs_to :visita
  belongs_to :cuenta_usuarios
end
