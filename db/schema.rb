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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20200410065038) do

  create_table "service_types", force: :cascade do |t|
    t.string "serviceTypeName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.integer "ServiceType_id"
    t.integer "VehicleType_id"
    t.string "serviceName"
    t.time "openingTime"
    t.time "closingTime"
    t.text "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ServiceType_id"], name: "index_services_on_ServiceType_id"
    t.index ["VehicleType_id"], name: "index_services_on_VehicleType_id"
  end

  create_table "vehicle_types", force: :cascade do |t|
    t.string "vehicleTypeName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.integer "VehicleType_id"
    t.string "vehiclePlate"
    t.string "vehicleBrand"
    t.string "vehicleModel"
    t.string "mainColor"
    t.string "secondaryColor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["VehicleType_id"], name: "index_vehicles_on_VehicleType_id"
  end

end
