list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
def my_min(list)
  sorted = false
  while !sorted
    sorted = true
    (0...list.length - 1).each do |ele|
      if list[ele] > list[ele + 1]
        list[ele] , list[ele + 1] = list[ele + 1] , list[ele]
        sorted = false
      end
    end
  end
  list
end

p my_min(list).first == -5
#time complexity for this function is N^2

def my_min2(list)
  found = list[0]
  (0...list.length).each do |ele|
    if list[ele] < found
      found = list[ele]
    end
  end
  found
end

#time complexity is N because we are iterating through an array N times
p my_min2(list)

# list = [5, 3, -7]
#list = [2, 3, -6, 7, -6, 7]
# list = [-5, -1, -3]
def sub_sums(list)
  sum = []
  (0...list.length).each do |i|
    (i...list.length).each do |j|
      sum << list[i..j]
    end
  end
  total = sum[0].sum
  
  sum.each do |nums|
    if nums.sum > total
      total = nums.sum
    end
  end
  total
end

p sub_sums(list)

#time complex is N^2 on the nested loops
# N to get the total, which is dominated out by N^2

def sub_sums2(list) 
  tally = list[0]
  cur_sum = 0
  contiguous = true
  (0...list.length).each do |i|
    cur_sum += list[i]
    if cur_sum < 0
      cur_sum = 0
      next
    end
    tally = cur_sum if cur_sum > tally
  end
  tally
end

p sub_sums2(list)
