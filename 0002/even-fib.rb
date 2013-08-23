@fib_memo = {}
def fib(n)
  return 1 if n == 0
  return 1 if n == 1
  unless @fib_memo[n]
    @fib_memo[n] = fib(n-2) + fib(n-1)
  end
  @fib_memo[n]
end

n = 0
answer = 0
while (true) do 
  n += 1
  fibnum = fib(n)
  break if fibnum > 4_000_000
  answer += fibnum if fibnum % 2 == 0
  puts fibnum
end
printf "answer=%d\n", answer
