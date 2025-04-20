class Node < ApplicationRecord
  has_ancestry counter_cache: true, cache_depth: true
end
