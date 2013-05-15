class Manager < ActiveRecord::Base
  attr_accessible :Active, :First_Name, :Last_Name, :email

  has_many :contacts
  has_many :orders, :through => :contacts
  
end
