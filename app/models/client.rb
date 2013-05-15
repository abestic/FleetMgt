class Client < ActiveRecord::Base
  attr_accessible :Active, :LAM_ID, :Name

  

  scope :active, where(active: true)
end
