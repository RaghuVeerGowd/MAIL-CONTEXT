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

ActiveRecord::Schema.define(version: 20150810104021) do

  create_table "mail_contexts", force: :cascade do |t|
    t.string   "email",        limit: 255
    t.string   "message_body", limit: 255
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.string   "time_part",    limit: 255
    t.string   "user_id",      limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end
