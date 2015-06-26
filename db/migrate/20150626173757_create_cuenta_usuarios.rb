class CreateCuentaUsuarios < ActiveRecord::Migration
  def change
    create_table :cuenta_usuarios do |t|
      t.integer :identificacion
      t.string :nombre, limit: 30
      t.string :apellido, limit: 30
      t.integer :rol
      t.integer :genero
      t.date :fechaNacimiento
      t.string :direccion, limit: 50
      t.integer :estado
      t.references :tipo_documentos, index: true, foreign_key: true
      t.references :estado_civils, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :cuenta_usuarios, :identificacion, unique: true
  end
end
