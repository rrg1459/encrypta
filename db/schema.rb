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

ActiveRecord::Schema.define(version: 2021_01_14_182911) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "canales", force: :cascade do |t|
    t.string "nombre", null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

  create_table "numeros", force: :cascade do |t|
    t.integer "inversion", null: false
    t.integer "fondo", null: false
    t.integer "porcentaje", null: false
    t.integer "canal_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "opciones", force: :cascade do |t|
    t.integer "juliano", null: false
    t.string "resultado", null: false
    t.integer "porcentaje", null: false
    t.integer "inversion", null: false
    t.string "tipo", null: false
    t.integer "par_id", null: false
    t.integer "reloj_id", null: false
    t.integer "canal_id", null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "traded_at"
  end

  create_table "pares", force: :cascade do |t|
    t.string "nombre", null: false
    t.string "imagen"
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

  create_table "relojes", force: :cascade do |t|
    t.integer "minuto", null: false
    t.datetime "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

  add_foreign_key "numeros", "canales"
  add_foreign_key "opciones", "canales"
  add_foreign_key "opciones", "pares"
  add_foreign_key "opciones", "relojes"
end
