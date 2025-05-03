require "benchmark/ips"

$children_count = 5
$max_depth = 5

def create_data(nodes, depth)
  return if depth >= $max_depth

  $children_count.times do |i|
    node = nodes.create(name: "f-#{depth}-#{i}")
    create_data(node.children, depth + 1)
  end
end

namespace :benchmark do
  task create: :environment do
    [ Node, NestNode ].each do |model|
      ActiveRecord::Base.connection.execute("TRUNCATE TABLE #{model.table_name} RESTART IDENTITY CASCADE;")
    end

    Benchmark.ips do |x|
      x.config(warmup: 0)
      x.report("ancestry") do
        create_data(Node.roots, 0)
      end
      x.report("awesome_nested_set") do
        create_data(NestNode.roots, 0)
      end
    end
  end

  task children_of: :environment do
    Benchmark.ips do |x|
      x.report("ancestry") do
        Node.all.each do |node|
          Node.children_of(node.id)
        end
      end
      x.report("awesome_nested_set") do
        NestNode.all.each do |node|
          NestNode.where(parent_id: node.id)
        end
      end
    end
  end

  task children: :environment do
    Benchmark.ips do |x|
      x.report("ancestry") do
        Node.all.each do |node|
          node.children
        end
      end
      x.report("awesome_nested_set") do
        NestNode.all.each do |node|
          node.children
        end
      end
    end
  end

  task siblings: :environment do
    Benchmark.ips do |x|
      x.report("ancestry") do
        Node.all.each do |node|
          node.siblings
        end
      end
      x.report("awesome_nested_set") do
        NestNode.all.each do |node|
          node.self_and_siblings
        end
      end
    end
  end

  task descendants: :environment do
    Benchmark.ips do |x|
      x.report("ancestry") do
        Node.all.each do |node|
          node.descendants
        end
      end
      x.report("awesome_nested_set") do
        NestNode.all.each do |node|
          node.descendants
        end
      end
    end
  end

  task ancestors: :environment do
    Benchmark.ips do |x|
      x.report("ancestry") do
        Node.all.each do |node|
          node.ancestors
        end
      end
      x.report("awesome_nested_set") do
        NestNode.all.each do |node|
          node.ancestors
        end
      end
    end
  end

  task all: :environment do
    puts "---------------------------------"
    %w[create children_of children descendants siblings ancestors].each do |sub_task|
      task = "benchmark:#{sub_task}"
      puts task
      Rake::Task[task].invoke
      puts "---------------------------------"
    end
  end
end
