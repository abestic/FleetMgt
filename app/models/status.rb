class Status < ActiveRecord::Base
  attr_accessible :Code, :Description

  has_many :orders

end
