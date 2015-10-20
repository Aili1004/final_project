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

ActiveRecord::Schema.define(version: 20151020000012) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "emails", force: :cascade do |t|
    t.text     "email_address"
    t.integer  "wedding_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.text     "name"
  end

  create_table "guests", force: :cascade do |t|
    t.text     "full_name"
    t.text     "relationship"
    t.text     "greeting"
    t.boolean  "is_attending"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "number_people"
  end

  create_table "guests_weddings", force: :cascade do |t|
    t.integer "guest_id"
    t.integer "wedding_id"
  end

  create_table "images", force: :cascade do |t|
    t.text     "url"
    t.integer  "wedding_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text     "email"
    t.text     "name"
    t.text     "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "weddings", force: :cascade do |t|
    t.text     "bride_name"
    t.text     "groom_name"
    t.text     "love_story"
    t.integer  "number_guests"
    t.date     "date"
    t.text     "location"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "user_id"
  end

end
