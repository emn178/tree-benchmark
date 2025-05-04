class Node < ApplicationRecord
  has_ancestry counter_cache: true, cache_depth: true

  def self.children_of_by_id(id)
    where(ancestry: Node.where(id: id).select(sanitize_sql_array([ "CONCAT(ancestry, ?)", "#{id}/" ])))
  end
end
