def array_of_array_products(arr)
  product_array = []
  for i in 0...arr.length
     product = 1
     for j in 0...arr.length
       product *= arr[j] unless i==j
       j += 1
     end
    product_array << product
     i += 1
   end
  product_array
end

arr1 = [2, 7, 3, 4]
arr2 = [8, 10, 2]

p array_of_array_products(arr1)
p array_of_array_products(arr2)