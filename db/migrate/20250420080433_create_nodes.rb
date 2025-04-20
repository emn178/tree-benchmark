class CreateNodes < ActiveRecord::Migration[8.0]
  def change
    create_table :nodes do |t|
      t.string :name, null: false
      t.string :ancestry, collation: 'C', null: false
      t.integer :ancestry_depth, default: 0
      t.integer :children_count, default: 0

      t.timestamps

      t.index :ancestry
    end
  end
end
