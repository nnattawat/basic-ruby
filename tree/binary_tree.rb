class Node 
	attr_accessor :value, :left, :right

	def initialize(value=nil, left=nil, right=nil)
		@value = value
		@left = left
		@right = right
	end

	def self.insert(node, v, &block)
		# binary tree insert without balancing, 
    # block performs the comparison operation
    return Node.new(v) unless node
    if block.call(v, node.value) == -1 # less than
      node.left = insert(node.left, v, &block)
    else
			node.right = insert(node.right, v, &block)
		end
    return node
	end

	def self.visit(n, order=:preorder, &block)
    # visit nodes in a binary tree, order can be determinied
    # block performs visit action
    return false if n.nil?

    if order == :preorder
      yield n.value
      visit(n.left, order, &block)
      visit(n.right, order, &block)
    elsif order == :inorder
      visit(n.left, order, &block)
      yield n.value
      visit(n.right, order, &block)
    elsif order == :postorder
      visit(n.left, order, &block)
      visit(n.right, order, &block)
      yield n.value
    end
	end

end


# Only run the following code when this file is the main file being run
# instead of having been required or loaded by another file
if $0 == __FILE__
    # a simple test case
    root = nil
    "chunkybacon".scan(/./m) {|c| root = Node.insert(root, c) {|a,b| a<=>b}} #<=> is eqaul to a.to_s == b.to_s
    Node.visit(root, :postorder) {|v| print v} 

    puts "\nFlatten the tree"
    fallten_tree = []
    Node.visit(root, :postorder) {|v| fallten_tree << v} 
    print fallten_tree
    puts "\n"
end