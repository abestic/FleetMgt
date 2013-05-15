class Contact < ActiveRecord::Base
  attr_accessible :Active, :Client_ID, :First_Name, :Last_Name, :User_ID, :email

  has_many :orders
  has_one :manager

  scope :active, where(active: true)
end
