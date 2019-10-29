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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2019_10_29_165840) do

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "course_name"
    t.integer "course_id"
    t.integer "review_id"
    t.integer "professor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["professor_id"], name: "index_courses_on_professor_id"
    t.index ["review_id"], name: "index_courses_on_review_id"
  end

  create_table "professors", force: :cascade do |t|
    t.string "prof_name"
    t.integer "prof_id"
    t.integer "review_id"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_professors_on_course_id"
    t.index ["review_id"], name: "index_professors_on_review_id"
  end
=======
ActiveRecord::Schema.define(version: 2019_10_29_172458) do
>>>>>>> 2c17a0b

  create_table "courses", force: :cascade do |t|
    t.string "course_name"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professors", force: :cascade do |t|
    t.string "prof_name"
    t.integer "prof_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "course_id"
    t.integer "prof_id"
    t.text "evaluation"
    t.integer "prof_rating"
    t.integer "workload_rating"
    t.integer "support_rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
