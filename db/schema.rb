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

ActiveRecord::Schema.define(:version => 20110530235455) do

  create_table "plants", :force => true do |t|
    t.string   "name"
    t.integer  "count"
    t.float    "yield"
    t.string   "yield_unit"
    t.string   "hardiness"
    t.integer  "adlf_min"
    t.integer  "adlf_max"
    t.string   "seed"
    t.integer  "spacing"
    t.integer  "rows_per_bed"
    t.boolean  "alternate_rows"
    t.float    "depth"
    t.integer  "feedings_min"
    t.integer  "feedings_max"
    t.float    "avg_height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
