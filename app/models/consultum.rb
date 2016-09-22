class Consultum < ApplicationRecord
  belongs_to :dentistum
  belongs_to :paciente
  has_many :procedimentos
end
