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

ActiveRecord::Schema[7.1].define(version: 2025_04_24_043039) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "my_clients", force: :cascade do |t|
    t.string "name", limit: 250, null: false
    t.string "slug", limit: 100, null: false
    t.string "is_project", limit: 30, default: "0", null: false
    t.string "self_capture", limit: 1, default: "1", null: false
    t.string "client_prefix", limit: 4, null: false
    t.string "client_logo", limit: 255, default: "no-image.jpg", null: false
    t.text "address"
    t.string "phone_number", limit: 50
    t.string "city", limit: 50
    t.datetime "created_at", precision: 0, null: false
    t.datetime "updated_at", precision: 0, null: false
    t.datetime "deleted_at", precision: 0
  end

end
