class CreatePreguntaVisita < ActiveRecord::Migration
  def change
    create_table :pregunta_visita do |t|
      t.string :pregunta, limit: 45
      t.text :descripcion

      t.timestamps null: false
    end
    add_index :pregunta_visita, :pregunta, unique: true
  end
end
