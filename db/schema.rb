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

ActiveRecord::Schema.define(version: 20190730052457) do

  create_table "services", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "service_name",        null: false
    t.integer  "req_email_address",   null: false
    t.integer  "req_password",        null: false
    t.integer  "req_phone",           null: false
    t.integer  "req_birth_date",      null: false
    t.integer  "req_contract_number", null: false
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "subscriptions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id",         null: false
    t.integer  "service_id",      null: false
    t.string   "email_address",   null: false
    t.string   "password",        null: false
    t.string   "phone"
    t.datetime "last_login_at"
    t.integer  "in_use",          null: false
    t.string   "contract_number"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "cust_last_name",         default: "", null: false
    t.string   "cust_first_name",        default: "", null: false
    t.integer  "gender"
    t.string   "phone",                  default: "", null: false
    t.date     "birth_date"
    t.string   "proxy_last_name",        default: "", null: false
    t.string   "proxy_first_name",       default: "", null: false
    t.string   "proxy_email",            default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
