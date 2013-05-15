# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130515180645) do

  create_table "carriers", :force => true do |t|
    t.string   "Name"
    t.string   "Code"
    t.boolean  "Active"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "clients", :force => true do |t|
    t.string   "Name"
    t.integer  "LAM_ID"
    t.boolean  "Active"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contacts", :force => true do |t|
    t.string   "First_Name"
    t.string   "Last_Name"
    t.string   "email"
    t.integer  "Client_ID"
    t.integer  "User_ID"
    t.boolean  "Active"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "demands", :force => true do |t|
    t.integer  "Order_ID"
    t.integer  "Railcar_ID"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "facilities", :force => true do |t|
    t.string   "Name"
    t.string   "Address_1"
    t.string   "Address_2"
    t.string   "City"
    t.integer  "State_ID"
    t.string   "Postal_Code"
    t.integer  "Station_ID"
    t.integer  "Carrier_ID"
    t.text     "Routing_Notes"
    t.boolean  "Active"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "managers", :force => true do |t|
    t.string   "First_Name"
    t.string   "Last_Name"
    t.string   "email"
    t.boolean  "Active"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "orders", :force => true do |t|
    t.integer  "Contact_ID"
    t.integer  "Facility_ID"
    t.integer  "Railcar_Demand"
    t.integer  "Railcar_Type_ID"
    t.integer  "Status_ID"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "Manager_ID"
  end

  create_table "railcar_types", :force => true do |t|
    t.string   "Name"
    t.text     "Description"
    t.boolean  "Active"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "railcars", :force => true do |t|
    t.string   "Initial"
    t.string   "Number"
    t.integer  "Railcar_Type_ID"
    t.integer  "Inside_Length"
    t.integer  "Capacity"
    t.integer  "GWR"
    t.boolean  "Active"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "states", :force => true do |t|
    t.string   "Name"
    t.string   "Code"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "stations", :force => true do |t|
    t.string   "City"
    t.integer  "State_ID"
    t.boolean  "Active"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "statuses", :force => true do |t|
    t.string   "Code"
    t.text     "Description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
