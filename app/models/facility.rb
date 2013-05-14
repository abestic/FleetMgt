class Facility < ActiveRecord::Base
  attr_accessible :Active, :Address_1, :Address_2, :Carrier_ID, :City, :Name, :Postal_Code, :Routing_Notes, :State_ID, :Station_ID
end
