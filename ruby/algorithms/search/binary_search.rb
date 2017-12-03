require "benchmark"

# Binary Search

array = 1.upto(10000).map(&:to_i)

ele = 100


mid_index = array.length/2 
iter = 0
found_index = nil

left_index = 0
right_index = array.length

mid_index = (left_index + right_index)/2
time = Benchmark.measure do
	while true
 		iter+=1
		if mid_index == 0
			found_index = 0 if ele == array.first
			break 
		elsif mid_index == array.length - 1 
			found_index = mid_index if ele == array.last
			break 
		elsif ele == array[mid_index]
			found_index = mid_index
			break
		elsif ele > array[mid_index]
			left_index = mid_index
			mid_index = (left_index + right_index)/2
		elsif ele < array[mid_index]
			right_index = mid_index
			mid_index = (left_index + right_index)/2
		end
	end
end


if found_index
	puts "Found #{ele} in total iteration #{iter} at index #{found_index} in time: #{time}"
else
	puts  "Not found #{ele} in total iteration #{iter} in time: #{time}"
end


