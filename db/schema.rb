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

ActiveRecord::Schema.define(version: 20161129181209) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "state_id"
    t.integer  "country_id"
    t.string   "city"
    t.string   "street"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category", force: :cascade do |t|
    t.string   "tag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "country", force: :cascade do |t|
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prod_to_cart", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "shopping_cart_id"
    t.integer  "amount"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.float    "price"
    t.string   "sku"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "shopping_cart", force: :cascade do |t|
    t.integer  "shipping_address_id"
    t.integer  "billing_address_id"
    t.integer  "user_id"
    t.boolean  "checked_out"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "state", force: :cascade do |t|
    t.string   "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "phone_number"
    t.string   "email"
    t.integer  "shipping_address_id"
    t.integer  "billing_address_id"
    t.string   "credit_card"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end