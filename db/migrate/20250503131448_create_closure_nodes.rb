class CreateClosureNodes < ActiveRecord::Migration[8.0]
  def change
    create_table :closure_nodes do |t|
      t.string :name, null: false
      t.bigint :parent_id, index: true

      t.timestamps
    end
  end
end
