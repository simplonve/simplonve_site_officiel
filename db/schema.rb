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

ActiveRecord::Schema.define(version: 20151013132419) do

  create_table "articles", force: :cascade do |t|
    t.integer  "day"
    t.string   "month"
    t.integer  "year"
    t.string   "title"
    t.text     "subtitle"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "calendriers", force: :cascade do |t|
    t.string   "nom"
    t.string   "prenom"
    t.string   "email"
    t.string   "telephone"
    t.date     "date"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "citations", force: :cascade do |t|
    t.text     "citation"
    t.string   "auteur"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "name"
    t.text     "body"
    t.integer  "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["article_id"], name: "index_comments_on_article_id"

  create_table "ressources", force: :cascade do |t|
    t.integer  "title"
    t.string   "desc"
    t.integer  "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "title"
    t.string   "tag"
    t.string   "desc"
    t.string   "photo"
    t.string   "mail"
    t.string   "github"
    t.string   "linkedin"
    t.string   "twitter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "title"
    t.string   "image"
    t.string   "tags"
    t.string   "desc"
    t.string   "linkedin"
    t.string   "twitter"
    t.string   "github"
    t.boolean  "online"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
