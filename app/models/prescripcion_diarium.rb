class PrescripcionDiarium < ActiveRecord::Base
  belongs_to :prescripcions
  belongs_to :dia_semanals
end
