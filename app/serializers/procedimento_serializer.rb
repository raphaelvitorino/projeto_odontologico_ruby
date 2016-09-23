class ProcedimentoSerializer < BaseSerializer
  attributes :id, :nome, :descricao
  belongs_to :consultum
  link(:self) { procedimento_path(object) }
end
