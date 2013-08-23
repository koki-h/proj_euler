require 'pp'
def palindrome?(n)
  n_str = n.to_s
  digit = n_str.size
  case digit
  when 1
    true
  when 2 
    (n_str[0] == n_str[1]) ? true : false
  else
    if n_str[0] == n_str[-1]
      palindrome?(n_str[1..-2])
    else
      false
    end
  end
end

palindrome_list = []
999.downto(100) do |n|
  999.downto(100) do |n2|
    unless n == n2
      productive = n * n2
      if palindrome?(productive)
        puts "#{n} x #{n2}"
        puts productive 
        palindrome_list << productive
      end
    end
  end
end
puts "The answer is .."
puts palindrome_list.max
