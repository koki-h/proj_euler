@primes = [2]

def next_prime(prime)
  n = prime + 1
  until (prime?(n)) do
    n += 1
  end
  n
end

def prime?(n)
  return true if @primes.include?(n) 
  return false if @primes.select{|p| (n % p) == 0}[0]
  divnum = n - 1
  until ((n % divnum) == 0) do
    divnum -=  1
  end
  if divnum == 1
    @primes << n
    true
  else
    false
  end
end

def prime_factor(n)
  p = 2
  until((n % p) == 0) do
    p = next_prime(p)
  end
  if n / p == 1
    n
  else
    puts p
    prime_factor(n / p)
  end
end

$n = 600851475143
puts prime_factor($n)
