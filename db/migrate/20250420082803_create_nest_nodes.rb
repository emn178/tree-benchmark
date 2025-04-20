class CreateNestNodes < ActiveRecord::Migration[8.0]
  def change
    create_table :nest_nodes do |t|
      t.string :name, null: false
      t.bigint :parent_id, null: true, index: true
      t.bigint :lft, null: false, index: true
      t.bigint :rgt, null: false, index: true

      # optional fields
      t.integer :depth, null: false, default: 0
      t.integer :children_count, null: false, default: 0

      t.timestamps
    end
  end
end
