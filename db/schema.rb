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

ActiveRecord::Schema.define(version: 20160406141556) do

  create_table "chats", force: :cascade do |t|
    t.text     "title"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chats_users", id: false, force: :cascade do |t|
    t.integer "chat_id"
    t.integer "user_id"
  end

  add_index "chats_users", ["chat_id"], name: "index_chats_users_on_chat_id"
  add_index "chats_users", ["user_id"], name: "index_chats_users_on_user_id"

  create_table "messages", force: :cascade do |t|
    t.integer  "chat_id"
    t.integer  "user_id"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resumes", force: :cascade do |t|
    t.string   "name"
    t.string   "attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.text     "taskname"
    t.date     "duedate"
    t.integer  "sender"
    t.integer  "wansungdo"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks_users", id: false, force: :cascade do |t|
    t.integer "task_id"
    t.integer "user_id"
  end

  add_index "tasks_users", ["task_id"], name: "index_tasks_users_on_task_id"
  add_index "tasks_users", ["user_id"], name: "index_tasks_users_on_user_id"

  create_table "teams", force: :cascade do |t|
    t.string   "teamname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams_users", id: false, force: :cascade do |t|
    t.integer "team_id"
    t.integer "user_id"
  end

  add_index "teams_users", ["team_id"], name: "index_teams_users_on_team_id"
  add_index "teams_users", ["user_id"], name: "index_teams_users_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "last_seen"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "whiteboards", force: :cascade do |t|
    t.integer  "chat_id"
    t.text     "content"
    t.integer  "user_id"
    t.boolean  "edit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
