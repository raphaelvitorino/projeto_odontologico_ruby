class CreateConsulta < ActiveRecord::Migration[5.0]
  def change
    create_table :consulta do |t|
      t.date :data_consulta
      t.string :descricao
      t.integer :procedimento_id
      t.integer :dentista_id
      t.integer :paciente_id

      t.timestamps
    end
  end
end
