class GraphNode

    attr_accessor :value, :neighbors, :visited_pos

        def initialize(value)
            @value = value
            @neighbors = []
            @visited_pos = []
        end

    def bfs(starting_node, target_value)

        queue = [starting_node]

        until queue.empty? do
            dequeued = queue.shift
            if dequeued.value == target_value && !visited_pos.include?(dequeued)
                return dequeued
            else
                visited_pos += dequeued
                queue += dequeued.neighbors
            end
        end
        nil
    end

end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p a.bfs(a, "b")
p a.bfs(a, "f")