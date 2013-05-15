class Order < ActiveRecord::Base
  attr_accessible :Contact_ID, :Facility_ID, :Manager_ID, :Railcar_Demand, :Railcar_Type_ID, :Status_ID

  belongs_to :manager
  belongs_to :contact 


end
