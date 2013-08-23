answer=0
1.upto(1000) do |n|
  if (n % 5) == 0 || (n % 3) == 0
    answer += n
    puts n
  end
end
printf "answer=%d\n", answer
