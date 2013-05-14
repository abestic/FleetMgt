class Order < ActiveRecord::Base
  attr_accessible :Contact_ID, :Facility_ID, :Railcar_Demand, :Railcar_Type_ID, :Status_ID
end
