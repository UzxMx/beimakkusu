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

ActiveRecord::Schema.define(version: 20170104093207) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "templates", force: :cascade do |t|
    t.string   "name",                        default: "",   null: false
    t.string   "url",                         default: "",   null: false
    t.integer  "type",                        default: 0,    null: false
    t.integer  "status",                      default: 0,    null: false
    t.integer  "user_id"
    t.string   "item_expr",                   default: "",   null: false
    t.string   "page_expr",                   default: "",   null: false
    t.string   "item_details_expr",           default: "",   null: false
    t.string   "list_item_details_expr",      default: "",   null: false
    t.string   "start_index",                 default: "",   null: false
    t.string   "end_index",                   default: "",   null: false
    t.integer  "internal_page_count",         default: 0,    null: false
    t.integer  "page_count",                  default: 1000, null: false
    t.string   "meta_info",                   default: "",   null: false
    t.string   "next_page_element_meta_info", default: "",   null: false
    t.string   "remark",                      default: "",   null: false
    t.string   "province",                    default: "",   null: false
    t.string   "info_type",                   default: "",   null: false
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.index ["name"], name: "index_templates_on_name", unique: true, using: :btree
    t.index ["url"], name: "index_templates_on_url", unique: true, using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",               default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.integer  "role",                   default: 0
    t.string   "name",                   default: ""
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["username"], name: "index_users_on_username", unique: true, using: :btree
  end

end
