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

ActiveRecord::Schema[7.2].define(version: 2024_10_23_235032) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articulos", force: :cascade do |t|
    t.string "titulo"
    t.text "contenido"
    t.bigint "usuario_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_articulos_on_usuario_id"
  end

  create_table "categoria", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comentarios", force: :cascade do |t|
    t.text "contenido"
    t.bigint "usuario_id", null: false
    t.bigint "articulo_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["articulo_id"], name: "index_comentarios_on_articulo_id"
    t.index ["usuario_id"], name: "index_comentarios_on_usuario_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "articulos", "usuarios"
  add_foreign_key "comentarios", "articulos"
  add_foreign_key "comentarios", "usuarios"
end
