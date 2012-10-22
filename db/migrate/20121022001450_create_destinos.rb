class CreateDestinos < ActiveRecord::Migration
  def change
    create_table :destinos do |t|
      t.string :nome
      t.references :paise

      t.timestamps
    end
    add_index :destinos, :paise_id
  end
end
