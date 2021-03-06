class ConsultumSerializer < BaseSerializer
  attributes :id, :data_consulta, :descricao, :procedimento_id, :dentista_id, :paciente_id
  belongs_to :dentistum
  belongs_to :paciente
  has_many :procedimentos
  link(:self) { consultum_path(object) }
  link(:procedimentos) { consultum_procedimentos_path(object) }

end
