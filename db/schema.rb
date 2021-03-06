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

ActiveRecord::Schema.define(:version => 20111231221819) do

  create_table "messages", :force => true do |t|
    t.integer  "user_id"
    t.integer  "use_id"
    t.datetime "when"
    t.string   "if"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resources", :force => true do |t|
    t.integer  "type_id"
    t.integer  "order"
    t.string   "name"
    t.string   "location"
    t.text     "description"
    t.integer  "duration"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", :force => true do |t|
    t.string   "name"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "name"
    t.string   "twitter"
    t.string   "key"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "uses", :force => true do |t|
    t.integer  "user_id"
    t.integer  "resource_id"
    t.datetime "start"
    t.datetime "finish"
    t.text     "raw_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
