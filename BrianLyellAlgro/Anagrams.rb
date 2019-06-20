# anagram?("gizmo", "sally")    #=> false
# anagram?("elvis", "lives") 

def first_anagram?(string)
  arr = string.split('')
  bar = arr.permutation.to_a
  bar.each {|ele| ele.join("")}
  bar
end

p first_anagram?("bar")

# n!

def second_anagram?(string1, string2)
  string1.each_char do |c|
    return false unless string2.include?(c)
    string2[string2.index(c)] = ""
  end
  string2.split("").empty? ? true : false
end

# not N its N^2


def third_anagram?(string1, string2)
  string1.split("").sort == string2.split("").sort ? true : false
end


#n log n .sort = merge sort

def fourth_anagram?(string1 , string2)
  hash1 = Hash.new(0)
  # hash2 = Hash.new(0)
  string1.each_char { |char| hash1[char] += 1}
  # string2.each_char { |char| hash2[char] += 1}
  string2.each_char { |char| hash1[char] -= 1}
  # hash1 == hash2
  hash1.values.all? { |el| el == 0 }
end

puts fourth_anagram?("gizmo", "sally")    #=> false
puts fourth_anagram?("elvis", "lives") 


def n_squared_two_sum?(arr, target_sum)
  (0...arr.length - 1).each do |i|
    (i+1...arr.length).each do |j|
      return true if arr[i] + arr[j] == target_sum
    end
  end
  false
end

def okay_two_sum?(arr, target_sum)
  arr.sort!
  mid = arr.length / 2
  

  case arr[mid] <=> target_sum
  when -1
    cur_sum = 
  when 0
    arr[arr.index(0)] == nil ? false : true
  when 1
end

def two_sum?
  hash = {}
  arr.each {|num| hash[]}
end