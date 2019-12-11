def is_prime?(num)
    (2..Math.sqrt(num)).each { |i| return false if num % i == 0}
    true
end

def prime_factors(n)
  result = ""
  (2..n).each do |p|
    if is_prime?(p)
      i = 0
      while n % p == 0
        n /= p
        i += 1
      end
      if i > 1
        result += "(" + p.to_s + "**" + i.to_s + ")"
      elsif i > 0
        result += "(" + p.to_s + ")"
      end
    end
  end
  result
end

  
puts prime_factors(86240)