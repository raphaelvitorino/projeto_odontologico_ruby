class PacienteSerializer < BaseSerializer
  attributes :id, :nome, :cpf
  has_many :consulta
end
