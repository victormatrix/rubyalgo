# Insert sort

seeds = [10, 23, 2, 5, 19, 7, 18, 6, 34]
puts "Original input:" + seeds.to_s

results = Array.new

seeds.each do |item|
  if results.empty?
    results.push item
  else
    i = results.length - 1
    while i >= 0 && results[i] > item
      i = i - 1
    end
    results.insert i + 1, item
  end
  # print out every insert step result
  puts results.to_s
end

