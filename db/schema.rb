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

ActiveRecord::Schema.define(version: 20140711174003) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachments", force: true do |t|
    t.integer  "entry_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "office_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "company_client_joins", force: true do |t|
    t.integer  "general_contractor_id"
    t.integer  "company_client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entries", force: true do |t|
    t.integer  "job_id"
    t.text     "text_blob"
    t.boolean  "read"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: true do |t|
    t.integer  "general_contractor_id"
    t.integer  "client_id"
    t.integer  "client_type"
    t.boolean  "open"
    t.boolean  "paused"
    t.string   "contract_price"
    t.string   "start_date"
    t.string   "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "persons", force: true do |t|
    t.integer  "company_id"
    t.string   "type"
    t.string   "name"
    t.string   "address"
    t.string   "email_1"
    t.string   "email_2"
    t.string   "email_3"
    t.string   "home_phone"
    t.string   "office_phone"
    t.string   "mobile_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sub_contractor_joins", force: true do |t|
    t.integer  "roster_sub_contractor_id"
    t.integer  "general_contractor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subcontracts", force: true do |t|
    t.integer  "job_id"
    t.integer  "subcontractor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
