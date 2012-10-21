class CreatePassageiros < ActiveRecord::Migration
  def change
    create_table :passageiros do |t|
      t.string :bairro
      t.string :cidade
      t.string :cpf
      t.integer :idade
      t.string :nome
      t.string :rg
      t.string :rua

      t.timestamps
    end
  end
end
