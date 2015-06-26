class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.integer :identificacion
      t.string :nombre, limit: 30
      t.string :apellido, limit: 30
      t.integer :genero
      t.string :direccion, limit: 50
      t.integer :estado
      t.date :fechaNacimiento
      t.references :patologia, index: true, foreign_key: true
      t.references :tipo_documentos, index: true, foreign_key: true
      t.references :estado_civils, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :pacientes, :identificacion, unique: true
  end
end
