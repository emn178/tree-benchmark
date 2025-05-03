class CreateClosureNodeHierarchies < ActiveRecord::Migration[8.0]
  def change
    create_table :closure_node_hierarchies, id: false do |t|
      t.integer :ancestor_id, null: false
      t.integer :descendant_id, null: false
      t.integer :generations, null: false
    end

    add_index :closure_node_hierarchies, [ :ancestor_id, :descendant_id, :generations ],
      unique: true,
      name: "closure_node_anc_desc_idx"

    add_index :closure_node_hierarchies, [ :descendant_id ],
      name: "closure_node_desc_idx"
  end
end
