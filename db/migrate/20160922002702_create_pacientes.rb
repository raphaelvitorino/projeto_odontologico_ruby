class CreatePacientes < ActiveRecord::Migration[5.0]
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.string :cpf

      t.timestamps
    end
  end
end
