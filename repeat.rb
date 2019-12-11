def repeat_value(n)
    result = []
    i = 1
    while result.count < n
        i.times do |j|
            if result.count < n
                result.append(i)
            end
        end
        i += 1
    end
    result
end

puts repeat_value(7)
  
  