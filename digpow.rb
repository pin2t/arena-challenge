def dig_pow(n, p)
    r = 0
    n.to_s.each_char do |c|
        r += c.to_i.pow(p)
        p += 1 
    end
    if r % n == 0
        return r / n
    else
        return -1
    end
end

puts dig_pow(89, 1)
puts dig_pow(92, 1)
puts dig_pow(695, 2)
puts dig_pow(46288, 3)
puts dig_pow(1111123, 4)