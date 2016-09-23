class DentistumSerializer < BaseSerializer
  attributes :id, :nome, :cro, :funcao
  has_many :consulta
  link(:self) { dentistum_path(object) }
  link(:consulta) { dentistum_consulta_path(object) }
end
