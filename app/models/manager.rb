class Manager < ActiveRecord::Base
  attr_accessible :Active, :First_Name, :Last_Name, :email, :full_name

  has_many :orders

  def full_name
  	"#{First_Name} #{Last_Name}"
  end

end
