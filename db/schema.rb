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

ActiveRecord::Schema.define(version: 20170702223716) do

  create_table "months", force: :cascade do |t|
    t.decimal  "media_temp"
    t.decimal  "desvio_temp"
    t.decimal  "media_dewp"
    t.decimal  "desvio_dewp"
    t.decimal  "media_w"
    t.decimal  "desvio_w"
    t.decimal  "a_temp"
    t.decimal  "b_temp"
    t.decimal  "a_dewp"
    t.decimal  "b_dewp"
    t.decimal  "a_w"
    t.decimal  "b_w"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "month"
    t.integer  "year"
    t.date     "mes_ano"
    t.decimal  "mediah_temp"
    t.decimal  "var_temp"
    t.decimal  "cvp_temp"
    t.decimal  "mediah_dewp"
    t.decimal  "var_dewp"
    t.decimal  "cvp_dewp"
    t.decimal  "mediah_w"
    t.decimal  "var_w"
    t.decimal  "cvp_w"
  end

end
