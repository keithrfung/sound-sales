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

ActiveRecord::Schema.define(version: 20160420014251) do

  create_table "clients", force: true do |t|
    t.integer  "clientId"
    t.string   "firstName"
    t.string   "lastName"
    t.integer  "phoneNumber"
    t.string   "addressLine1"
    t.string   "addressLine2"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.integer  "zipCode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.integer  "productId"
    t.string   "name"
    t.text     "description"
    t.float    "price"
    t.integer  "type"
    t.float    "commissionRate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regions", force: true do |t|
    t.integer  "regionId"
    t.integer  "managerId"
    t.string   "name"
    t.string   "state"
    t.integer  "zipCode"
    t.string   "country"
    t.string   "area"
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales", force: true do |t|
    t.integer  "salesId"
    t.float    "tax"
    t.datetime "saleDate"
    t.integer  "sellerId"
    t.integer  "buyerId"
    t.string   "paymentType"
    t.integer  "quantity"
    t.integer  "productId"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.integer  "userId"
    t.string   "firstName"
    t.string   "lastName"
    t.string   "password"
    t.integer  "statusId"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
