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

ActiveRecord::Schema.define(version: 20160730165213) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "members", force: :cascade do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "middle_initial"
    t.string   "id_number"
    t.date     "date_of_birth"
    t.boolean  "gender"
    t.string   "home_number"
    t.string   "cell_number"
    t.string   "address"
    t.string   "alternate_address"
    t.date     "date_of_enrollment"
    t.date     "date_of_disenrollment"
    t.string   "line_of_business"
    t.string   "primary_language"
    t.boolean  "interpreter_needed"
    t.string   "ethnicity"
    t.boolean  "marital_status"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

end
