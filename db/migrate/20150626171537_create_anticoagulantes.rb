class CreateAnticoagulantes < ActiveRecord::Migration
  def change
    create_table :anticoagulantes do |t|
      t.string :nombre, limit: 45
      t.text :descripcion

      t.timestamps null: false
    end
    add_index :anticoagulantes, :nombre, unique: true
  end
end
