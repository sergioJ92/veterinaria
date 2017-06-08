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

ActiveRecord::Schema.define(version: 20170605174113) do

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "ci"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "internships", force: :cascade do |t|
    t.date "intership_date"
    t.date "dischargeDate"
    t.string "deail"
    t.integer "pet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pet_id"], name: "index_internships_on_pet_id"
  end

  create_table "pets", force: :cascade do |t|
    t.string "ci"
    t.string "name"
    t.string "gender"
    t.string "race"
    t.date "bornDate"
    t.integer "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_pets_on_client_id"
  end

  create_table "registers", force: :cascade do |t|
    t.date "registerDate"
    t.integer "veterinary_id"
    t.integer "service_id"
    t.integer "pet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pet_id"], name: "index_registers_on_pet_id"
    t.index ["service_id"], name: "index_registers_on_service_id"
    t.index ["veterinary_id"], name: "index_registers_on_veterinary_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.string "detail"
    t.integer "typeServices_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["typeServices_id"], name: "index_services_on_typeServices_id"
  end

  create_table "type_services", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "veterinaries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
