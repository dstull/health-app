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

ActiveRecord::Schema.define(version: 2017_01_15_144915) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", id: :serial, force: :cascade do |t|
    t.integer "member_id"
    t.integer "doctor_id"
    t.datetime "date_of_visit"
    t.boolean "transportation_required", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "call_log_id"
    t.index ["call_log_id"], name: "index_appointments_on_call_log_id"
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
    t.index ["member_id"], name: "index_appointments_on_member_id"
  end

  create_table "call_logs", id: :serial, force: :cascade do |t|
    t.integer "member_id"
    t.time "time_of_call"
    t.integer "user_id"
    t.string "result_of_call"
    t.string "pcp_provider_call"
    t.text "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "date_of_call"
    t.index ["member_id"], name: "index_call_logs_on_member_id"
    t.index ["user_id"], name: "index_call_logs_on_user_id"
  end

  create_table "care_gaps", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "care_gaps_members", id: false, force: :cascade do |t|
    t.integer "care_gap_id", null: false
    t.integer "member_id", null: false
    t.index ["care_gap_id"], name: "index_care_gaps_members_on_care_gap_id"
    t.index ["member_id"], name: "index_care_gaps_members_on_member_id"
  end

  create_table "completed_gaps", id: :serial, force: :cascade do |t|
    t.integer "care_gap_id"
    t.integer "doctor_id"
    t.date "date_of_completion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "member_id"
    t.index ["care_gap_id"], name: "index_completed_gaps_on_care_gap_id"
    t.index ["doctor_id"], name: "index_completed_gaps_on_doctor_id"
    t.index ["member_id"], name: "index_completed_gaps_on_member_id"
  end

  create_table "doctors", id: :serial, force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
  end

  create_table "members", id: :serial, force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "middle_initial"
    t.string "id_number"
    t.date "date_of_birth"
    t.boolean "gender"
    t.string "home_number"
    t.string "cell_number"
    t.string "address"
    t.string "alternate_address"
    t.date "date_of_enrollment"
    t.date "date_of_disenrollment"
    t.string "line_of_business"
    t.string "primary_language"
    t.boolean "interpreter_needed"
    t.string "ethnicity"
    t.string "marital_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "work_number"
    t.integer "primary_care_physician_id"
    t.index ["primary_care_physician_id"], name: "index_members_on_primary_care_physician_id"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "appointments", "call_logs"
  add_foreign_key "appointments", "doctors"
  add_foreign_key "appointments", "members"
  add_foreign_key "call_logs", "members"
  add_foreign_key "call_logs", "users"
  add_foreign_key "completed_gaps", "care_gaps"
  add_foreign_key "completed_gaps", "doctors"
  add_foreign_key "completed_gaps", "members"
end
