# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_17_154244) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alternatives", force: :cascade do |t|
    t.integer "brand_name_id"
    t.string "name"
    t.string "price"
    t.string "description"
  end

  create_table "brand_names", force: :cascade do |t|
    t.string "name"
    t.string "common_name"
    t.string "description"
    t.boolean "generic_option", default: false
    t.boolean "alternative_option", default: false
    t.string "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "ndc_num"
    t.string "side_effects"
  end

  create_table "generics", force: :cascade do |t|
    t.integer "brand_name_id"
    t.string "name"
    t.string "price"
  end

  create_table "prescriptions", force: :cascade do |t|
    t.integer "user_id"
    t.integer "brand_name_id"
    t.integer "price"
    t.integer "dosage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "terms", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "users", force: :cascade do |t|
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
  end

end
