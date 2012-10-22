class Voo < ActiveRecord::Base
  belongs_to :ciao
  belongs_to :destino
  attr_accessible :ciao_id,:nome,:destino_id,:nome,:tarifa
end
