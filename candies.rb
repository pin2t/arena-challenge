def candies(arr)
  result = [1] * arr.length
  balance = arr.length > 1
  while balance
    balance = false
    for i in 0..arr.length - 2
      if arr[i] > arr[i + 1] 
        if result[i] <= result[i + 1]
          result[i] = result[i] + 1
          balance = true
        end
      elsif arr[i] < arr[i + 1] 
        if result[i] >= result[i + 1]
          result[i + 1] = result[i] + 1
          balance = true
        end
      end
    end
  end
  result.sum
end


puts candies([4])
puts candies([4, 6, 4, 5, 6, 2])
puts candies([2, 4, 3, 5, 2, 6, 4, 5])