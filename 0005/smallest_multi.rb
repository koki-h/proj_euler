def all_dividable?(n)
  1.upto(20) do |n2|
    unless (n % n2) == 0
      return false
    end
  end
  true
end

n = 1
until (all_dividable?(n * 2520))
  puts n * 2520
  n += 1
end
puts "The answer is .."
puts n * 2520

