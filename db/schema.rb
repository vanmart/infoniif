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

ActiveRecord::Schema.define(version: 20151027045719) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounting_softwares", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name",                                null: false
    t.string   "shortname",                           null: false
    t.text     "social_object",                       null: false
    t.string   "nit",                                 null: false
    t.string   "adderss",                             null: false
    t.string   "phone",                               null: false
    t.string   "email",                               null: false
    t.string   "nature",                              null: false
    t.date     "activities_started_at",               null: false
    t.integer  "partnerns_count",                     null: false
    t.float    "authorized_capital",                  null: false
    t.float    "subscribed_capital",                  null: false
    t.float    "paid_capital",                        null: false
    t.float    "average_monthly_incomev",             null: false
    t.integer  "company_assets_count",                null: false
    t.integer  "employees_by_dependency"
    t.float    "export_import_percent"
    t.integer  "group",                               null: false
    t.float    "loan_portfolio_discount_rate",        null: false
    t.float    "apply_discount_rate",                 null: false
    t.float    "tax_rate",                            null: false
    t.integer  "national_clients_limit_days",         null: false
    t.integer  "particular_loan_limit_days",          null: false
    t.integer  "difficult_charge_loan_limit_days",    null: false
    t.integer  "income_charge_limit_days",            null: false
    t.integer  "recovery_loan_probable_days_90_180",  null: false
    t.integer  "recovery_loan_probable_days_180_360", null: false
    t.integer  "recovery_loan_probable_days_360",     null: false
    t.integer  "legal_representative_id"
    t.integer  "accountant_id"
    t.integer  "company_type_id"
    t.integer  "accounting_software_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "company_asset_types", force: :cascade do |t|
    t.string   "name",                      null: false
    t.integer  "fiscal_depreciation_years", null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "company_assets", force: :cascade do |t|
    t.integer  "control",                  null: false
    t.string   "code",                     null: false
    t.integer  "quantity",                 null: false
    t.text     "description",              null: false
    t.date     "acquired_at",              null: false
    t.float    "acquisition_cost",         null: false
    t.string   "location",                 null: false
    t.integer  "estimated_lifespan_years", null: false
    t.text     "improvements",             null: false
    t.float    "valuations",               null: false
    t.float    "residual_value",           null: false
    t.string   "real_estate_registration", null: false
    t.string   "cadastral_record",         null: false
    t.float    "meters_length"
    t.string   "engine_serial"
    t.integer  "company_asset_type_id"
    t.integer  "company_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "company_types", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "short_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "description", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
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
    t.string   "name",                                null: false
    t.string   "last_name",                           null: false
    t.string   "identification_number",               null: false
    t.string   "cellphone",                           null: false
    t.string   "avatar"
    t.integer  "role_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "companies", "company_types"
  add_foreign_key "company_assets", "companies"
  add_foreign_key "company_assets", "company_asset_types"
  add_foreign_key "users", "roles"
end
