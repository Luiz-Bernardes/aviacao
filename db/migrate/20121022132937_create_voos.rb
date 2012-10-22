class CreateVoos < ActiveRecord::Migration
  def change
    create_table :voos do |t|
      t.float :tarifa
      t.references :ciao
      t.references :destino

      t.timestamps
    end
    add_index :voos, :ciao_id
    add_index :voos, :destino_id
  end
end
