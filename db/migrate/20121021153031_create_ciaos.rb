class CreateCiaos < ActiveRecord::Migration
  def change
    create_table :ciaos do |t|
      t.string :nome
      t.string :sede

      t.timestamps
    end
  end
end
