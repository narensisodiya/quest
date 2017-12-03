# Linear Search
# 

require "benchmark"

array = 1.upto(10000).map(&:to_i)

ele = 1



iter = 0
found_index = nil


time = Benchmark.measure do

array.each_with_index do |e, i| 
  iter += 1
  if(e == ele)
	found_index = i
   break
  end

end
end


if found_index
	puts "Found #{ele} in total iteration #{iter} at index #{found_index} in time: #{time}"
else
	puts  "Not found #{ele} in total iteration #{iter} in time: #{time}"
end


