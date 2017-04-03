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

ActiveRecord::Schema.define(version: 20170403105035) do

  create_table "alumns", force: :cascade do |t|
    t.integer  "registry_alumn"
    t.string   "name_alumn"
    t.string   "class_alumn"
    t.string   "address_alumn"
    t.string   "phone_alumn"
    t.string   "birth_date_alumn"
    t.string   "sex_alumn"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "parents", force: :cascade do |t|
    t.integer  "cpf_parent"
    t.string   "name_parent"
    t.string   "address_parent"
    t.string   "phone_parent"
    t.string   "sex_parent"
    t.string   "rg_parent"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "alumn_id"
    t.index ["alumn_id"], name: "index_parents_on_alumn_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
