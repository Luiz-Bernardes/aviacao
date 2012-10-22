class Destino < ActiveRecord::Base
  belongs_to :paise
  attr_accessible :paise_id,:nome,:nome
end
