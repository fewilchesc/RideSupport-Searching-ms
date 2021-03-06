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

ActiveRecord::Schema.define(version: 20200410232807) do

  create_table "service_types", force: :cascade do |t|
    t.string "name", limit: 30, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_service_types_on_name", unique: true
  end

  create_table "services", force: :cascade do |t|
    t.integer "ServiceType_id"
    t.integer "VehicleType_id"
    t.text "description", null: false
    t.time "openingTime", null: false
    t.time "closingTime", null: false
    t.decimal "cost", null: false
    t.text "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ServiceType_id"], name: "index_services_on_ServiceType_id"
    t.index ["VehicleType_id"], name: "index_services_on_VehicleType_id"
  end

  create_table "vehicle_types", force: :cascade do |t|
    t.string "name", limit: 30, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_vehicle_types_on_name", unique: true
  end

  create_table "vehicles", force: :cascade do |t|
    t.integer "VehicleType_id"
    t.string "plate", limit: 10, null: false
    t.string "brand", limit: 15, null: false
    t.string "model", limit: 15, null: false
    t.string "mainColor", limit: 10
    t.string "secondaryColor", limit: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["VehicleType_id"], name: "index_vehicles_on_VehicleType_id"
    t.index ["plate"], name: "index_vehicles_on_plate", unique: true
  end

end
