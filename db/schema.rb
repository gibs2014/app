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

ActiveRecord::Schema.define(version: 20131109022527) do

  create_table "items", force: true do |t|
    t.string  "name"
    t.string  "category"
    t.string  "colour"
    t.string  "brand"
    t.integer "price"
    t.string  "flattering_for"
    t.boolean "extra_support"
    t.string  "image_url"
    t.string  "general_size"
    t.string  "us_size"
    t.string  "uk_size"
    t.string  "eu_size"
    t.string  "waist_size"
    t.string  "hip_size"
    t.string  "bust_size"
  end

  create_table "users", force: true do |t|
    t.string "first_name"
    t.string "second_name"
    t.date   "date_of_birth"
    t.string "email_address"
    t.string "general_size"
    t.string "uk_size"
    t.string "us_size"
    t.string "eu_size"
    t.string "waist_size"
    t.string "hip_size"
    t.string "bust_size"
  end

end
