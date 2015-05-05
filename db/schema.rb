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

ActiveRecord::Schema.define(version: 20150105110044) do

  create_table "comment_subscriptions", force: :cascade do |t|
    t.integer "user_id"
    t.integer "comment_id"
    t.string  "email",      default: ""
    t.string  "state",      default: "active"
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "holder_id"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.string   "commentable_url"
    t.string   "commentable_title"
    t.string   "commentable_state"
    t.string   "anchor"
    t.string   "title"
    t.string   "contacts"
    t.text     "raw_content"
    t.text     "content"
    t.string   "view_token"
    t.string   "state",                 default: ""
    t.string   "ip",                    default: "undefined"
    t.string   "referer",               default: "undefined"
    t.string   "user_agent",            default: "undefined"
    t.integer  "tolerance_time"
    t.boolean  "spam",                  default: false
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth",                 default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "akismet_state",         default: "default"
    t.string   "yandex_cleanweb_state", default: "default"
    t.string   "yandex_cleanweb_id",    default: ""
  end

  create_table "posts", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "draft_comments_count",     default: 0
    t.integer  "published_comments_count", default: 0
    t.integer  "deleted_comments_count",   default: 0
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",                                null: false
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "my_draft_comments_count",     default: 0
    t.integer  "my_published_comments_count", default: 0
    t.integer  "my_comments_count",           default: 0
    t.integer  "draft_comcoms_count",         default: 0
    t.integer  "published_comcoms_count",     default: 0
    t.integer  "deleted_comcoms_count",       default: 0
    t.integer  "spam_comcoms_count",          default: 0
    t.integer  "draft_comments_count",        default: 0
    t.integer  "published_comments_count",    default: 0
    t.integer  "deleted_comments_count",      default: 0
  end

end
