module Enumerable # Add method to Array object
	def word_count
		h = Hash.new(0)
		# 'text'.intern >>> :text 
		each{|word| h[word.downcase.intern] += 1}
		h

		# code above can be replace with
		# inject(Hash.new(0)) do |mem, val| 
		# 	mem[val.downcase.intern] += 1 
		# 	mem
		# end
	end

	def first_letter
		# can't use Hash.new [] since when it does h[:any] = [] it point h[:any] to same memory as []
		h = Hash.new { |hash, key| hash[key] = [] }
		each{|word| h[word[0].downcase.intern] << word}
		h

		# code above can be replace with
		# inject(Hash.new{|hash, key| hash[key] = []}) do |mem, val|   
		# 	mem[val[0].downcase.intern] << val
		# 	mem
		# end
	end
end

describe "Hash" do
	context "default value" do
		it "return nil for unfound key" do
			h = {}
			expect(h[:any]).to be_nil
		end

		it "set the default value for unfound key" do
			h = Hash.new(0)
			expect(h[:any]).to eq(0)

			h = Hash.new {|hash, key| hash[:key] = 0 }
			expect(h[:any]).to eq(0)
		end	

		let(:str){"I will not go unless you go"}
		it "create use hash to store word count" do
			str_array = str.split(" ")

			expect(str_array.word_count[:any]).to eq(0)
			expect(str_array.word_count[:will]).to eq(1)
			expect(str_array.word_count[:go]).to eq(2)
		end

		it "use hash to create list of word start with that charactor" do
			str_array = str.split(" ")
			expect(str_array.first_letter[:g]).to eq(["go", "go"])
		end
	end
end