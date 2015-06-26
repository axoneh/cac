class CreateEstadoCivils < ActiveRecord::Migration
  def change
    create_table :estado_civils do |t|
      t.string :nombre, limit: 30
      t.text :descripcion

      t.timestamps null: false
    end
    add_index :estado_civils, :nombre, unique: true
  end
end
