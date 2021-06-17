# Brute Force Solution O(n^2)

# def array_of_array_products(arr)
#   product_array = []
#   for i in 0...arr.length
#     product = 1
#     for j in 0...arr.length
#       product *= arr[j] unless i==j
#       j += 1
#     end
#     product_array << product
#     i += 1
#    end
#   product_array
# end



# Using Hash

def array_of_array_products(arr)
  hash = {}
  result = []
  arr.each do |elem|
    if hash[elem]
      hash[elem] += 1
    else
      hash[elem] = 1
    end
  end

  keys = hash.keys
  for index in 0...arr.length
    product = 1
    keys.each do |key|
      if key == arr[index]
        product *= key**(hash[key] - 1)
      else
        product *= key**hash[key]
      end
    end
    result << product
  end
  result
end

arr1 = [2, 7, 3, 4]
arr2 = [8, 10, 2]

p array_of_array_products(arr1)
p array_of_array_products(arr2)