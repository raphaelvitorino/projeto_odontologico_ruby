class PacienteSerializer < BaseSerializer
  attributes :id, :nome, :cpf
  has_many :consulta
  link(:self) { paciente_path(object) }
  link(:consulta) { paciente_consulta_path(object) }
end
