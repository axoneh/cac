class CreateCPacientes < ActiveRecord::Migration
  def change
    create_table :c_pacientes do |t|
      t.text :respuesta
      t.references :pacientes, index: true, foreign_key: true
      t.references :caracteristicas_patologicas, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
