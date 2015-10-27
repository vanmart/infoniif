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

ActiveRecord::Schema.define(version: 20151027144355) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "asset_types", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "shortname"
    t.string   "expedient"
    t.text     "social_object"
    t.string   "nature"
    t.string   "nit"
    t.string   "adderss"
    t.string   "phone"
    t.string   "email"
    t.date     "activities_started_at"
    t.string   "accounting_software"
    t.string   "society_type"
    t.integer  "partnerns_count"
    t.float    "authorized_capital"
    t.float    "subscribed_capital"
    t.float    "paid_capital"
    t.float    "average_monthly_income"
    t.integer  "legal_representative_id"
    t.integer  "internal_counter_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "company_assets", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "control"
    t.string   "code"
    t.string   "description"
    t.string   "asset_registration"
    t.string   "engine_serial"
    t.string   "cadastral_record"
    t.string   "location"
    t.date     "acquisition_date"
    t.float    "acquisition_cost"
    t.integer  "fiscal_lifespan"
    t.integer  "estimated_lifespan"
    t.integer  "depreciation_years"
    t.integer  "depreciation_months"
    t.float    "accumulated_depreciation"
    t.float    "recidual_value"
    t.integer  "improvements"
    t.float    "amount_on_COLPCGA_book"
    t.string   "valuations"
    t.float    "fair_value"
    t.boolean  "diferred_taxes"
    t.float    "length"
    t.date     "court_date_balance"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "company_assets", ["company_id"], name: "index_company_assets_on_company_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "roles", ["user_id"], name: "index_roles_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.integer  "role_id"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "last_name"
    t.string   "identification_number"
    t.string   "cellphone"
    t.string   "avatar"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["role_id"], name: "index_users_on_role_id", using: :btree

end
