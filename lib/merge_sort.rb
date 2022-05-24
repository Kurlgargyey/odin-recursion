# frozen-string-literal: true

def merge_sort(arr, n=1)
  puts "Recursion #{n} on #{arr}."
  n+=1
  if arr.length < 2
    puts "Returning."
    return arr
  else
    puts "Splitting #{arr} into #{arr[0..arr.length/2-1]} and #{arr[arr.length/2..-1]}."
    left = merge_sort(arr[0..arr.length/2-1], n)
    right = merge_sort(arr[arr.length/2..-1], n)
    puts "Merging #{left} and #{right}... Recursion depth #{n}"
    merge = []
    until left.empty? && right.empty?
      if left.empty?
        merge << right.shift until right.empty?
        puts "Merge: #{merge}, #{left} and #{right} remaining."
        break
      elsif right.empty?
        merge << left.shift until left.empty?
        puts "Merge: #{merge}, #{left} and #{right} remaining."
        break
      else
        left[0] < right[0] ? merge << left.shift : merge << right.shift
        puts "Merge: #{merge}, #{left} and #{right} remaining."
      end
    end
    return merge
  end
end

array = [4,523,5,6,9,2,1,6,7]
array2 = [2,5,1,7]

p merge_sort(array)