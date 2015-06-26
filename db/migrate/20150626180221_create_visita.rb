class CreateVisita < ActiveRecord::Migration
  def change
    create_table :visita do |t|
      t.decimal :InrDomicilio
      t.references :pacientes, index: true, foreign_key: true
      t.text :observacion

      t.timestamps null: false
    end
  end
end
