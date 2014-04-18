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

ActiveRecord::Schema.define(version: 20140417040058) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dealers", force: true do |t|
    t.text     "name"
    t.text     "license_number"
    t.text     "address"
    t.text     "city"
    t.text     "state"
    t.integer  "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "media", force: true do |t|
    t.integer  "vehicle_id"
    t.string   "name"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.text     "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.integer  "role_id"
    t.text     "name"
    t.text     "address"
    t.text     "city"
    t.text     "state"
    t.text     "zip"
    t.text     "phone_number"
    t.boolean  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vehicles", force: true do |t|
    t.integer  "dealer_id"
    t.string   "user_id"
    t.integer  "year"
    t.string   "make"
    t.string   "model"
    t.string   "stock_no"
    t.string   "vin_id"
    t.string   "exterior_color"
    t.string   "interior_color"
    t.string   "including_actual_miles"
    t.string   "not_lncluding_actual_miles"
    t.string   "estimated_total_cost_of_repair"
    t.boolean  "inspection_revealed_safety_issues"
    t.text     "inspection_revealed_safety_issues_details"
    t.boolean  "inspection_revealed_frame_damage"
    t.text     "inspection_revealed_frame_damage_details"
    t.boolean  "sec_7_1_a"
    t.text     "sec_7_1_a_details"
    t.boolean  "sec_7_1_b"
    t.text     "sec_7_1_b_details"
    t.boolean  "sec_7_1_c"
    t.text     "sec_7_1_c_details"
    t.boolean  "sec_7_1_d"
    t.text     "sec_7_1_d_details"
    t.boolean  "sec_7_2_a"
    t.text     "sec_7_2_a_details"
    t.boolean  "sec_7_2_b"
    t.text     "sec_7_2_b_details"
    t.boolean  "sec_7_2_c"
    t.text     "sec_7_2_c_details"
    t.boolean  "sec_7_2_d"
    t.text     "sec_7_2_d_details"
    t.boolean  "sec_7_2_e"
    t.text     "sec_7_2_e_details"
    t.boolean  "sec_7_2_f"
    t.text     "sec_7_2_f_details"
    t.boolean  "sec_7_2_g"
    t.text     "sec_7_2_g_details"
    t.boolean  "sec_7_2_h"
    t.text     "sec_7_2_h_details"
    t.boolean  "sec_7_2_i"
    t.text     "sec_7_2_i_details"
    t.boolean  "sec_7_2_j"
    t.text     "sec_7_2_j_details"
    t.boolean  "sec_7_3_a"
    t.text     "sec_7_3_a_details"
    t.boolean  "sec_7_3_b"
    t.text     "sec_7_3_b_details"
    t.boolean  "sec_7_3_c"
    t.text     "sec_7_3_c_details"
    t.boolean  "sec_7_3_d"
    t.text     "sec_7_3_d_details"
    t.boolean  "sec_7_3_e"
    t.text     "sec_7_3_e_details"
    t.boolean  "sec_7_3_f"
    t.text     "sec_7_3_f_details"
    t.boolean  "sec_7_3_g"
    t.text     "sec_7_3_g_details"
    t.boolean  "sec_7_4"
    t.text     "sec_7_4_details"
    t.boolean  "sec_7_5"
    t.text     "sec_7_5_details"
    t.boolean  "sec_7_6"
    t.text     "sec_7_6_details"
    t.boolean  "sec_7_7"
    t.text     "sec_7_7_details"
    t.integer  "estimated_total_cost_for_repairs"
    t.date     "date_of_inspection"
    t.integer  "calculation_and_total_cost_for_inspection"
    t.integer  "total_cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
