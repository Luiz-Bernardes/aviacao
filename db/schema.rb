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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121022001450) do

  create_table "ciaos", :force => true do |t|
    t.string   "nome"
    t.string   "sede"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "destinos", :force => true do |t|
    t.string   "nome"
    t.integer  "paise_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "destinos", ["paise_id"], :name => "index_destinos_on_paise_id"

  create_table "paises", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "passageiros", :force => true do |t|
    t.string   "bairro"
    t.string   "cidade"
    t.string   "cpf"
    t.integer  "idade"
    t.string   "nome"
    t.string   "rg"
    t.string   "rua"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "telefones", :force => true do |t|
    t.string   "numero"
    t.integer  "passageiro_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "telefones", ["passageiro_id"], :name => "index_telefones_on_passageiro_id"

end
