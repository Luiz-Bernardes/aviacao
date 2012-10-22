class Passageirovoo < ActiveRecord::Base
  belongs_to :passageiro
  belongs_to :voo
  attr_accessible :passageiro_id,:nome,:voo_id,:tarifa,:data,:hora,:numpassageiros
end
