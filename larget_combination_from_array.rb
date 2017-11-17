# PROBLEM : You get an array of positive integers. 
# Write a function that creates from them the largest possible number. 
# For example, given [81, 8, 299, 85] the result will be 88581299.

def largest(array)
  n = array.length
  (n-1).times do |pass|
    swapped = false
    (n-1-pass).times do |i|
      if (array[i].to_s + array[i+1].to_s) < (array[i+1].to_s + array[i].to_s)
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
    break if not swapped
  end
  array.join('').to_i
end

a = [81, 8, 299, 85]
#output should be 88581299
largest(a)

a = [54,546,548,60]
#output should be 6054854654
largest(a)

a = [7,776,7,7]
#output should be 777776
largest(a)

a = [1, 34, 3, 98, 9, 76, 45, 4]
#output should be 998764543431
largest(a)
