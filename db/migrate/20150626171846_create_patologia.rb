class CreatePatologia < ActiveRecord::Migration
  def change
    create_table :patologia do |t|
      t.string :nombre, limit: 45
      t.text :descripcion

      t.timestamps null: false
    end
    add_index :patologia, :nombre, unique: true
  end
end
