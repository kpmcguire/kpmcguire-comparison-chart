# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_08_24_022318) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.integer "subscription_plan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "plan_id"
    t.index ["plan_id"], name: "index_companies_on_plan_id"
  end

  create_table "plans", force: :cascade do |t|
    t.string "title"
    t.text "reporting_storage"
    t.text "no_of_administrators"
    t.text "billing"
    t.text "one_year_price_lock"
    t.text "billing_data_export"
    t.text "automated_invoices_by_projects"
    t.text "subprojects"
    t.text "hipaa_baa"
    t.text "media_storage"
    t.text "rtmp_out"
    t.text "reseller_tax_agreement"
    t.text "call_throughout"
    t.text "dedicated_ip"
    t.text "additional_incremental_cps"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cost"
    t.text "description"
  end

  add_foreign_key "companies", "plans"
end
