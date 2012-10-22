class CreatePassageirovoos < ActiveRecord::Migration
  def change
    create_table :passageirovoos do |t|
      t.string :data
      t.string :hora
      t.integer :numpassageiros
      t.references :passageiro
      t.references :voo

      t.timestamps
    end
    add_index :passageirovoos, :passageiro_id
    add_index :passageirovoos, :voo_id
  end
end
