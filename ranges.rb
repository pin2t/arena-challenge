def ranges(numbers)
  result = []
  if numbers.count > 0
    result = [numbers[0]]
    for i in 1..numbers.count - 1
      j = result.count - 1
      while j >= 0
        if (result[j].kind_of? Range and result[j].end < numbers[i]) or
           (result[j] < numbers[i])
          result.insert(j + 1, numbers[i])
          break
        end
        j = j - 1
      end
      if j < 0 
        result.insert(0, numbers[i])
      end
    end
  end
  result
end

puts ranges([1,2,5,6,7, 8, 9, 10])
