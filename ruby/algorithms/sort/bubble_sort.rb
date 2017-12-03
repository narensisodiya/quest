# Bubble sort
# 

require "benchmark"

n = 10

array =  Array.new(n) { rand(1...n*100) } # generate random number array 



puts array.inspect

time = Benchmark.measure do
	(array.length-1).times do 
        sorted = true # keep track of swap if no swapping occurs ie array is sorted
		0.upto(array.length-1) do |index|
		  break if index+1 == array.length
		 if  array[index] > array[index+1]
		   temp = array[index]
		   array[index] = array[index+1]
		   array[index+1] = temp
		   sorted = false
		end
	 end
	 break if sorted
	end
end	

puts "sorted array in #{time}"
puts array.inspect










