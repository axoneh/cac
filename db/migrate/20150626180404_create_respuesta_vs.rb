class CreateRespuestaVs < ActiveRecord::Migration
  def change
    create_table :respuesta_vs do |t|
      t.references :visita, index: true, foreign_key: true
      t.references :pregunta_visita, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
