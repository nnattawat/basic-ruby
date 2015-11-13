# make user your array is sorted asc

def bsearch array, element, lower = 0, upper = nil

	upper = array.count - 1 if upper.nil?
	
	return if lower > upper

	mid = (upper + lower) / 2

	if element < array[mid]
		return bsearch array, element, lower, mid - 1
	elsif element > array[mid]
		return bsearch array, element, mid + 1, upper
	else
		return mid
	end

end

a = [1,2,3,4,5,6]
puts bsearch a, 5

# Or in build-in ruby function you can simply do 
# a.find_index(5)