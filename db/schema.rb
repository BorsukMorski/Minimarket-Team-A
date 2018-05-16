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

HEAD
ActiveRecord::Schema.define(version: 20180507202150) do

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.string "isbn"
    t.integer "pages"
    t.string "vendor"

ActiveRecord::Schema.define(version: 20180509185115) do

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "email"
e11540b98dcf8cadd7fc1feae4d54ac9668ce891
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
