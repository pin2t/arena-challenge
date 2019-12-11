def gcd(a, b) 
    if a % b == 0 
    b 
    else 
    gcd(b, a % b) 
    end 
end

def smallest_sum(arr)
    r = arr[0]
    arr.each_index do |i|
        if i > 0
            r = gcd(r, arr[i])
        end
    end
    r * arr.count
end

puts smallest_sum([1, 21, 55])
puts smallest_sum([9])