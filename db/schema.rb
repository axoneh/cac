# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150626180726) do

  create_table "anticoagulantes", force: :cascade do |t|
    t.string   "nombre",      limit: 45
    t.text     "descripcion"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "anticoagulantes", ["nombre"], name: "index_anticoagulantes_on_nombre", unique: true

  create_table "c_pacientes", force: :cascade do |t|
    t.text     "respuesta"
    t.integer  "pacientes_id"
    t.integer  "caracteristicas_patologicas_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "c_pacientes", ["caracteristicas_patologicas_id"], name: "index_c_pacientes_on_caracteristicas_patologicas_id"
  add_index "c_pacientes", ["pacientes_id"], name: "index_c_pacientes_on_pacientes_id"

  create_table "caracteristica_patologicas", force: :cascade do |t|
    t.string   "nombre",      limit: 45
    t.text     "descripcion"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "caracteristica_patologicas", ["nombre"], name: "index_caracteristica_patologicas_on_nombre", unique: true

  create_table "cuenta_usuarios", force: :cascade do |t|
    t.integer  "identificacion"
    t.string   "nombre",             limit: 30
    t.string   "apellido",           limit: 30
    t.integer  "rol"
    t.integer  "genero"
    t.date     "fechaNacimiento"
    t.string   "direccion",          limit: 50
    t.integer  "estado"
    t.integer  "tipo_documentos_id"
    t.integer  "estado_civils_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "cuenta_usuarios", ["estado_civils_id"], name: "index_cuenta_usuarios_on_estado_civils_id"
  add_index "cuenta_usuarios", ["identificacion"], name: "index_cuenta_usuarios_on_identificacion", unique: true
  add_index "cuenta_usuarios", ["tipo_documentos_id"], name: "index_cuenta_usuarios_on_tipo_documentos_id"

  create_table "dia_semanals", force: :cascade do |t|
    t.integer  "numero"
    t.string   "nombre",     limit: 10
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "dia_semanals", ["nombre"], name: "index_dia_semanals_on_nombre", unique: true
  add_index "dia_semanals", ["numero"], name: "index_dia_semanals_on_numero", unique: true

  create_table "estado_civils", force: :cascade do |t|
    t.string   "nombre",      limit: 30
    t.text     "descripcion"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "estado_civils", ["nombre"], name: "index_estado_civils_on_nombre", unique: true

  create_table "pacientes", force: :cascade do |t|
    t.integer  "identificacion"
    t.string   "nombre",             limit: 30
    t.string   "apellido",           limit: 30
    t.integer  "genero"
    t.string   "direccion",          limit: 50
    t.integer  "estado"
    t.date     "fechaNacimiento"
    t.integer  "patologia_id"
    t.integer  "tipo_documentos_id"
    t.integer  "estado_civils_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "pacientes", ["estado_civils_id"], name: "index_pacientes_on_estado_civils_id"
  add_index "pacientes", ["identificacion"], name: "index_pacientes_on_identificacion", unique: true
  add_index "pacientes", ["patologia_id"], name: "index_pacientes_on_patologia_id"
  add_index "pacientes", ["tipo_documentos_id"], name: "index_pacientes_on_tipo_documentos_id"

  create_table "patologia", force: :cascade do |t|
    t.string   "nombre",      limit: 45
    t.text     "descripcion"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "patologia", ["nombre"], name: "index_patologia_on_nombre", unique: true

  create_table "pregunta_visita", force: :cascade do |t|
    t.string   "pregunta",    limit: 45
    t.text     "descripcion"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "pregunta_visita", ["pregunta"], name: "index_pregunta_visita_on_pregunta", unique: true

  create_table "prescripcion_diaria", force: :cascade do |t|
    t.decimal  "cantidadGramos"
    t.integer  "prescripcions_id"
    t.integer  "dia_semanals_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "prescripcion_diaria", ["dia_semanals_id"], name: "index_prescripcion_diaria_on_dia_semanals_id"
  add_index "prescripcion_diaria", ["prescripcions_id"], name: "index_prescripcion_diaria_on_prescripcions_id"

  create_table "prescripcions", force: :cascade do |t|
    t.integer  "diasValidez"
    t.integer  "anticoagulantes_id"
    t.integer  "visita_id"
    t.integer  "cuenta_usuarios_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "prescripcions", ["anticoagulantes_id"], name: "index_prescripcions_on_anticoagulantes_id"
  add_index "prescripcions", ["cuenta_usuarios_id"], name: "index_prescripcions_on_cuenta_usuarios_id"
  add_index "prescripcions", ["visita_id"], name: "index_prescripcions_on_visita_id"

  create_table "respuesta_vs", force: :cascade do |t|
    t.integer  "visita_id"
    t.integer  "pregunta_visita_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "respuesta_vs", ["pregunta_visita_id"], name: "index_respuesta_vs_on_pregunta_visita_id"
  add_index "respuesta_vs", ["visita_id"], name: "index_respuesta_vs_on_visita_id"

  create_table "tipo_documentos", force: :cascade do |t|
    t.string   "nombre",      limit: 30
    t.text     "descripcion"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "tipo_documentos", ["nombre"], name: "index_tipo_documentos_on_nombre", unique: true

  create_table "visita", force: :cascade do |t|
    t.decimal  "InrDomicilio"
    t.integer  "pacientes_id"
    t.text     "observacion"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "visita", ["pacientes_id"], name: "index_visita_on_pacientes_id"

end
