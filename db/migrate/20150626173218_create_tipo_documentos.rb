class CreateTipoDocumentos < ActiveRecord::Migration
  def change
    create_table :tipo_documentos do |t|
      t.string :nombre, limit: 30
      t.text :descripcion

      t.timestamps null: false
    end
    add_index :tipo_documentos, :nombre, unique: true
  end
end
