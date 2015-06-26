class CreateCaracteristicaPatologicas < ActiveRecord::Migration
  def change
    create_table :caracteristica_patologicas do |t|
      t.string :nombre, limit: 45
      t.text :descripcion

      t.timestamps null: false
    end
    add_index :caracteristica_patologicas, :nombre, unique: true
  end
end
