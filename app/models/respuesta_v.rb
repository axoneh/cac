class RespuestaV < ActiveRecord::Base
  belongs_to :visita
  belongs_to :pregunta_visita
end
