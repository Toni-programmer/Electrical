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

ActiveRecord::Schema[8.1].define(version: 2026_05_19_085330) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "news", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.string "image"
    t.string "link"
    t.boolean "published"
    t.string "slug"
    t.string "title"
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "category"
    t.string "client"
    t.datetime "created_at", null: false
    t.text "description"
    t.text "gallery"
    t.string "image"
    t.string "slug"
    t.string "title"
    t.datetime "updated_at", null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.string "ciudad"
    t.string "codigo_postal"
    t.datetime "created_at", null: false
    t.string "email"
    t.text "message"
    t.string "name"
    t.string "phone"
    t.string "provincia"
    t.string "puntos_de_luz"
    t.string "status"
    t.string "suministro_electrico"
    t.string "superficie"
    t.string "tipo_alimentacion"
    t.string "tipo_reforma"
    t.text "tipo_reforma_otro"
    t.string "tipo_vivienda"
    t.text "tipo_vivienda_otro"
    t.string "titulo"
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.text "description"
    t.string "image"
    t.string "slug"
    t.string "title"
    t.datetime "updated_at", null: false
  end
end
