class CreateTelefones < ActiveRecord::Migration
  def change
    create_table :telefones do |t|
      t.string :numero
      t.references :passageiro

      t.timestamps
    end
    add_index :telefones, :passageiro_id
  end
end
