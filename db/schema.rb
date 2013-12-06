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

<<<<<<< HEAD
=======
<<<<<<< HEAD
ActiveRecord::Schema.define(:version => 20131203233339) do
=======
>>>>>>> 394b98d34bd55da11b5d7926ff13dde05112c4d7
ActiveRecord::Schema.define(:version => 20131205225938) do

  create_table "districts", :force => true do |t|
    t.integer  "organization_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end
<<<<<<< HEAD
=======
>>>>>>> 78456b48d5db92bd81adaf31e888e80c8ceab899
>>>>>>> 394b98d34bd55da11b5d7926ff13dde05112c4d7

  create_table "families", :force => true do |t|
    t.string   "fam_name"
    t.string   "h_o_h"
    t.string   "address"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "members", :force => true do |t|
    t.string   "full_name"
    t.string   "preferred_name"
    t.string   "hh_position"
    t.string   "hh_order"
    t.string   "household_phone"
    t.string   "individual_phone"
    t.string   "household_email"
    t.string   "individual_email"
    t.string   "street_1"
    t.string   "street_2"
    t.string   "dp"
    t.string   "city"
    t.string   "postal"
    t.string   "state_prov"
    t.string   "country"
    t.string   "two_street_1"
    t.string   "two_street_2"
    t.string   "two_dp"
    t.string   "two_city"
    t.string   "two_zip"
    t.string   "two_state_prov"
    t.string   "two_country"
    t.string   "ward_geo_code"
    t.string   "sex"
    t.string   "priesthood"
    t.string   "married"
    t.integer  "family_id"
    t.integer  "vt_route_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "organizations", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "routes", :force => true do |t|
    t.integer  "district_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

  create_table "vt_routes", :force => true do |t|
    t.integer  "district_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
