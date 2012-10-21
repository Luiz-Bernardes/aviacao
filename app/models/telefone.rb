class Telefone < ActiveRecord::Base
  belongs_to :passageiro
  attr_accessible :passageiro_id,:numero,:nome
end
