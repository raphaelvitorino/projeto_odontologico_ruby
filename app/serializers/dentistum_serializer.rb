class DentistumSerializer < BaseSerializer
  attributes :id, :nome, :cro, :funcao
  has_many :consulta
end
