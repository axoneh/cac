class CreatePrescripcionDiaria < ActiveRecord::Migration
  def change
    create_table :prescripcion_diaria do |t|
      t.decimal :cantidadGramos
      t.references :prescripcions, index: true, foreign_key: true
      t.references :dia_semanals, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
