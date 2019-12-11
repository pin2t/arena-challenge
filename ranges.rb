def ranges(numbers)
  result = []
  if numbers.count > 0
    i = 0
    while i < numbers.count
      j = i
      while j < numbers.count - 1 && numbers[j + 1] == numbers[j] + 1
        j += 1
      end
      if j > i + 1
        result.append(numbers[i]..numbers[j])
      else
        result.append(numbers[i])
        if j > i
          result.append(numbers[j])
        end
      end
      i = j + 1
    end
  end
  result
end

puts ranges([1,2,5,6,7, 8, 9, 10])
puts "\n"
puts ranges([1,2])
puts "\n"
puts ranges([1])
puts "\n"
puts ranges([1,2,5])
puts "\n"
