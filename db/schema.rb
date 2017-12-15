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

ActiveRecord::Schema.define(version: 20171215044822) do

  create_table "fabric_types", force: :cascade do |t|
    t.string "fabric_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fabrics", force: :cascade do |t|
    t.integer "user_id"
    t.integer "fabric_type_id"
    t.string "fabric_name"
    t.integer "barcode"
    t.float "price"
    t.float "quantity"
    t.string "store"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "inventory_type_id"
    t.index ["fabric_type_id"], name: "index_fabrics_on_fabric_type_id"
    t.index ["user_id"], name: "index_fabrics_on_user_id"
  end

  create_table "fabrics_inventory_types", force: :cascade do |t|
    t.integer "user_id"
    t.integer "fabric_id"
    t.integer "inventory_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fabric_id"], name: "index_fabrics_inventory_types_on_fabric_id"
    t.index ["inventory_type_id"], name: "index_fabrics_inventory_types_on_inventory_type_id"
    t.index ["user_id"], name: "index_fabrics_inventory_types_on_user_id"
  end

  create_table "inventory_types", force: :cascade do |t|
    t.string "inventory_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
