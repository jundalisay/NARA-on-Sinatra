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

ActiveRecord::Schema.define(version: 20150405114037) do

  create_table "donations", force: :cascade do |t|
    t.string   "skuout1"
    t.integer  "qout1"
    t.string   "status1"
    t.integer  "btax1"
    t.string   "deliverer2"
    t.string   "skuin2"
    t.string   "skuout2"
    t.integer  "qin2"
    t.integer  "qout2"
    t.string   "status2"
    t.string   "deliverer3"
    t.string   "skuin3"
    t.string   "skuout3"
    t.integer  "qin3"
    t.integer  "qout3"
    t.string   "status3"
    t.string   "deliverer4"
    t.string   "skuin4"
    t.string   "skuout4"
    t.integer  "qin4"
    t.integer  "qout4"
    t.string   "status4"
    t.string   "deliverer5"
    t.string   "skuin5"
    t.string   "skuout5"
    t.integer  "qin5"
    t.integer  "qout5"
    t.string   "status5"
    t.string   "donationcode"
    t.string   "globalstatus"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "services", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "classification"
    t.text     "description"
    t.integer  "quantity"
    t.string   "barcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skus", force: :cascade do |t|
    t.string   "name"
    t.string   "classification"
    t.text     "description"
    t.string   "need"
    t.integer  "quantity"
    t.string   "measure"
    t.string   "barcode"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "trades", force: :cascade do |t|
    t.string   "skuin1"
    t.string   "skuout1"
    t.integer  "qin1"
    t.integer  "qout1"
    t.string   "status1"
    t.integer  "btax1"
    t.string   "recipient2"
    t.string   "skuin2"
    t.string   "skuout2"
    t.integer  "qin2"
    t.integer  "qout2"
    t.string   "status2"
    t.string   "recipient3"
    t.string   "skuin3"
    t.string   "skuout3"
    t.integer  "qin3"
    t.integer  "qout3"
    t.string   "status3"
    t.string   "recipient4"
    t.string   "skuin4"
    t.string   "skuout4"
    t.integer  "qin4"
    t.integer  "qout4"
    t.string   "status4"
    t.string   "recipient5"
    t.string   "skuin5"
    t.string   "skuout5"
    t.integer  "qin5"
    t.integer  "qout5"
    t.string   "status5"
    t.string   "trademethod"
    t.string   "tradecode"
    t.string   "globalstatus"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.string   "address"
    t.string   "phone"
    t.string   "email"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sku_id"
  end

end
