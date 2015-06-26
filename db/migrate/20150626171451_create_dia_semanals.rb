class CreateDiaSemanals < ActiveRecord::Migration
  def change
    create_table :dia_semanals do |t|
      t.integer :numero
      t.string :nombre, limit: 10

      t.timestamps null: false
    end
    add_index :dia_semanals, :numero, unique: true
    add_index :dia_semanals, :nombre, unique: true
  end
end
