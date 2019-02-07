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

ActiveRecord::Schema.define(version: 2019_02_05_115558) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "article_comments", force: :cascade do |t|
    t.string "commenter"
    t.text "body"
    t.bigint "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_article_comments_on_article_id"
  end

  create_table "article_views", force: :cascade do |t|
    t.string "user_id"
    t.integer "page_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "page_name"
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blog_comments", force: :cascade do |t|
    t.string "commenter"
    t.text "body"
    t.bigint "blog_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blog_id"], name: "index_blog_comments_on_blog_id"
  end

  create_table "blog_views", force: :cascade do |t|
    t.string "user_id"
    t.integer "page_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "page_name"
  end

  create_table "blogs", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "commenter"
    t.text "body"
    t.bigint "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_comments_on_article_id"
  end

  create_table "general_page_views", force: :cascade do |t|
    t.string "page_name"
    t.string "session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "home_page_views", force: :cascade do |t|
    t.string "page_name"
    t.integer "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "liked_theirrecipes", force: :cascade do |t|
    t.string "visitor_id"
    t.integer "theirrecipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipe_comments", force: :cascade do |t|
    t.string "commenter"
    t.text "body"
    t.bigint "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_recipe_comments_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.text "ingredient"
    t.text "method"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes_views", force: :cascade do |t|
    t.string "user_id"
    t.integer "page_id"
    t.string "page_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "their_recipes_views", force: :cascade do |t|
    t.string "user_id"
    t.integer "page_id"
    t.string "page_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "theirrecipes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visitors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "article_comments", "articles"
  add_foreign_key "blog_comments", "blogs"
  add_foreign_key "comments", "articles"
  add_foreign_key "recipe_comments", "recipes"
end
