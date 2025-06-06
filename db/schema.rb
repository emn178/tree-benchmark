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

ActiveRecord::Schema[8.0].define(version: 2025_05_03_132015) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "closure_node_hierarchies", id: false, force: :cascade do |t|
    t.integer "ancestor_id", null: false
    t.integer "descendant_id", null: false
    t.integer "generations", null: false
    t.index ["ancestor_id", "descendant_id", "generations"], name: "closure_node_anc_desc_idx", unique: true
    t.index ["descendant_id"], name: "closure_node_desc_idx"
  end

  create_table "closure_nodes", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parent_id"], name: "index_closure_nodes_on_parent_id"
  end

  create_table "nest_nodes", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "parent_id"
    t.bigint "lft", null: false
    t.bigint "rgt", null: false
    t.integer "depth", default: 0, null: false
    t.integer "children_count", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lft"], name: "index_nest_nodes_on_lft"
    t.index ["parent_id"], name: "index_nest_nodes_on_parent_id"
    t.index ["rgt"], name: "index_nest_nodes_on_rgt"
  end

  create_table "nodes", force: :cascade do |t|
    t.string "name", null: false
    t.string "ancestry", null: false, collation: "C"
    t.integer "ancestry_depth", default: 0
    t.integer "children_count", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ancestry"], name: "index_nodes_on_ancestry"
  end
end
