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

ActiveRecord::Schema[7.1].define(version: 2024_04_02_213033) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bureautiques", force: :cascade do |t|
    t.string "outil"
    t.integer "progression"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_bureautiques_on_user_id"
  end

  create_table "competences", force: :cascade do |t|
    t.string "competence"
    t.integer "progression"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_competences_on_user_id"
  end

  create_table "formations", force: :cascade do |t|
    t.date "annee_debut"
    t.date "annee_fin"
    t.string "emploi"
    t.string "organisation"
    t.string "ville"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "experience"
    t.string "detail"
    t.index ["user_id"], name: "index_formations_on_user_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "source"
    t.bigint "realisation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["realisation_id"], name: "index_photos_on_realisation_id"
  end

  create_table "realisations", force: :cascade do |t|
    t.string "titre"
    t.text "description"
    t.date "date"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "categorie"
    t.index ["user_id"], name: "index_realisations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "prenom"
    t.string "nom"
    t.string "telephone"
    t.text "adresse"
    t.text "introduction"
    t.string "emploi_voulu"
    t.text "ambition"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bureautiques", "users"
  add_foreign_key "competences", "users"
  add_foreign_key "formations", "users"
  add_foreign_key "photos", "realisations"
  add_foreign_key "realisations", "users"
end
