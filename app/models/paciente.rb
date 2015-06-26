class Paciente < ActiveRecord::Base
  belongs_to :patologia
  belongs_to :tipo_documentos
  belongs_to :estado_civils
end
