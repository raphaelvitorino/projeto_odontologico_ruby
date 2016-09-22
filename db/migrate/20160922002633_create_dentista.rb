class CreateDentista < ActiveRecord::Migration[5.0]
  def change
    create_table :dentista do |t|
      t.string :nome
      t.integer :cro
      t.string :funcao

      t.timestamps
    end
  end
end
