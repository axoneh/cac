class CreatePrescripcions < ActiveRecord::Migration
  def change
    create_table :prescripcions do |t|
      t.integer :diasValidez
      t.references :anticoagulantes, index: true, foreign_key: true
      t.references :visita, index: true, foreign_key: true
      t.references :cuenta_usuarios, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
