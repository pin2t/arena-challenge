def rot_left(a, d)
    a.rotate(d).join(" ")
end

puts rot_left([], 1)
puts rot_left([1, 2 ,3], 2)
