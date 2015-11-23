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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151105235221) do

  create_table "administrative_regions", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "initials",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "bonds", force: :cascade do |t|
    t.string   "description",       limit: 255
    t.date     "dt_admission"
    t.integer  "workload",          limit: 4
    t.text     "obs",               limit: 65535
    t.integer  "person_id",         limit: 4
    t.integer  "role_id",           limit: 4
    t.integer  "type_bond_id",      limit: 4
    t.integer  "instituation_id",   limit: 4
    t.integer  "situation_bond_id", limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "bonds", ["instituation_id"], name: "index_bonds_on_instituation_id", using: :btree
  add_index "bonds", ["person_id"], name: "index_bonds_on_person_id", using: :btree
  add_index "bonds", ["role_id"], name: "index_bonds_on_role_id", using: :btree
  add_index "bonds", ["situation_bond_id"], name: "index_bonds_on_situation_bond_id", using: :btree
  add_index "bonds", ["type_bond_id"], name: "index_bonds_on_type_bond_id", using: :btree

  create_table "districts", force: :cascade do |t|
    t.string   "name",                     limit: 255
    t.integer  "administrative_region_id", limit: 4
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "districts", ["administrative_region_id"], name: "index_districts_on_administrative_region_id", using: :btree

  create_table "frequencies", force: :cascade do |t|
    t.integer  "person_id",      limit: 4
    t.date     "frequency_date"
    t.time     "time_input"
    t.time     "time_output"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "frequencies", ["person_id"], name: "index_frequencies_on_person_id", using: :btree

  create_table "functions", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "instituations", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "locals", force: :cascade do |t|
    t.string   "name",             limit: 255
    t.string   "name_abr",         limit: 255
    t.string   "initials",         limit: 255
    t.string   "tel1",             limit: 255
    t.string   "tel2",             limit: 255
    t.string   "tel3",             limit: 255
    t.integer  "type_local_id",    limit: 4
    t.integer  "institution_id",   limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "patio",            limit: 255
    t.string   "number_patio_id",  limit: 255
    t.string   "complement_patio", limit: 255
    t.string   "zip_code",         limit: 255
    t.integer  "district_id",      limit: 4
    t.integer  "type_patio_id",    limit: 4
  end

  add_index "locals", ["district_id"], name: "index_locals_on_district_id", using: :btree
  add_index "locals", ["institution_id"], name: "index_locals_on_institution_id", using: :btree
  add_index "locals", ["type_local_id"], name: "index_locals_on_type_local_id", using: :btree
  add_index "locals", ["type_patio_id"], name: "index_locals_on_type_patio_id", using: :btree

  create_table "people", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.string   "gender",        limit: 255
    t.string   "rg",            limit: 255
    t.string   "cpf",           limit: 255
    t.date     "birth_date"
    t.string   "cel",           limit: 255
    t.string   "tel1",          limit: 255
    t.string   "tel2",          limit: 255
    t.integer  "district_id",   limit: 4
    t.integer  "user_id",       limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "patio",         limit: 255
    t.string   "number_patio",  limit: 255
    t.string   "complement",    limit: 255
    t.string   "zip_code",      limit: 255
    t.integer  "type_patio_id", limit: 4
  end

  add_index "people", ["district_id"], name: "index_people_on_district_id", using: :btree
  add_index "people", ["type_patio_id"], name: "index_people_on_type_patio_id", using: :btree
  add_index "people", ["user_id"], name: "index_people_on_user_id", using: :btree

  create_table "stockings", force: :cascade do |t|
    t.date     "data"
    t.integer  "workload",    limit: 4
    t.text     "obs",         limit: 65535
    t.integer  "function_id", limit: 4
    t.integer  "local_id",    limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "stockings", ["function_id"], name: "index_stockings_on_function_id", using: :btree
  add_index "stockings", ["local_id"], name: "index_stockings_on_local_id", using: :btree

  create_table "type_bonds", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "abbreviation", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "type_locals", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "type_patios", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "initial",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "person_id",              limit: 4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["person_id"], name: "index_users_on_person_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
