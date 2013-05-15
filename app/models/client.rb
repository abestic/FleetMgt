class Client < ActiveRecord::Base
  attr_accessible :Active, :LAM_ID, :Name

  has_many :contacts
end
