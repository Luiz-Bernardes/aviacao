class Passageiro < ActiveRecord::Base
  attr_accessible :bairro, :cidade, :cpf, :idade, :nome, :rg, :rua
end
