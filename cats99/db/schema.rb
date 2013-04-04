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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130404001511) do

  create_table "cats", :force => true do |t|
    t.string   "name"
    t.integer  "location_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "age"
    t.date     "birth_date"
    t.integer  "color_id"
    t.integer  "sex"
  end

  add_index "cats", ["location_id"], :name => "index_cats_on_location_id"

  create_table "colors", :force => true do |t|
    t.string "color"
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rental_requests", :force => true do |t|
    t.integer  "cat_id"
    t.date     "start_time"
    t.date     "end_time"
    t.integer  "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "rental_requests", ["cat_id"], :name => "index_rental_requests_on_cat_id"

end
