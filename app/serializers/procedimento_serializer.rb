class ProcedimentoSerializer < BaseSerializer
  attributes :id, :nome, :descricao
  belongs_to :consultum
end
