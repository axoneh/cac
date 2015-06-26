class CPaciente < ActiveRecord::Base
  belongs_to :pacientes
  belongs_to :caracteristicas_patologicas
end
