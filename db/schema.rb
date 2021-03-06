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

ActiveRecord::Schema.define(version: 20160504034234) do

  create_table "clients", force: true do |t|
    t.string   "phone"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zipcode"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "commissions", force: true do |t|
    t.decimal  "amount"
    t.integer  "sale_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "products_id"
    t.integer  "product_id"
  end

  add_index "commissions", ["products_id"], name: "index_commissions_on_products_id"

  create_table "products", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "price"
    t.decimal  "commission_rate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regions", force: true do |t|
    t.string   "name"
    t.integer  "manager_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales", force: true do |t|
    t.integer  "quantity"
    t.decimal  "subtotal"
    t.decimal  "tax"
    t.decimal  "total"
    t.string   "payment_type"
    t.datetime "sale_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "client_id"
    t.integer  "product_id"
    t.integer  "commission_id"
    t.decimal  "commission"
  end

  add_index "sales", ["client_id"], name: "index_sales_on_client_id"
  add_index "sales", ["product_id"], name: "index_sales_on_product_id"
  add_index "sales", ["user_id"], name: "index_sales_on_user_id"

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.string   "role"
    t.integer  "region_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "manager_id"
  end

  add_index "users", ["manager_id"], name: "index_users_on_manager_id"

end
