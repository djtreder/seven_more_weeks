function ends_in_3(num)
  return tostring(num):sub(-1,-1) == '3'
end

print("ends_in_3(3): " .. tostring(ends_in_3(3)))
print("ends_in_3(5): " .. tostring(ends_in_3(5)))
print("ends_in_3(35): " .. tostring(ends_in_3(35)))
print("ends_in_3(53): " .. tostring(ends_in_3(53)))

function is_prime(num)
  if num == 1 then return false end
  if num == 2 then return true end
  for i = 2, math.sqrt(num) do
    if num % i == 0 then
      return false
    end
  end
  return true
end

print("is_prime(1): " .. tostring(is_prime(1)))
print("is_prime(2): " .. tostring(is_prime(2)))
print("is_prime(3): " .. tostring(is_prime(3)))
print("is_prime(5): " .. tostring(is_prime(5)))
print("is_prime(6): " .. tostring(is_prime(6)))
print("is_prime(7): " .. tostring(is_prime(7)))
print("is_prime(9): " .. tostring(is_prime(9)))
print("is_prime(17): " .. tostring(is_prime(17)))

function print_primes_ending_in_3(num)
  local i = 0
  local poss = 3
  while i < num do
    if is_prime(poss) then
      print(poss)
      i = i + 1
    end
    poss = poss + 10
  end
end

print("print_primes_ending_in_3(5)")
print_primes_ending_in_3(5)

function for_loop(a, b, f)
  local i = a
  while i <= b do
    f(i)
    i = i + 1
  end
end

print("for_loop(2, 7, print)")
for_loop(2, 7, print)

function reduce(max, init, f)
  if max <= init then print('must be reducing at least 2 numbers') return false end
  temp = f(init, init + 1)
  for i = init + 2, max do
    temp = f(temp, i)
  end
  return temp
end

function add(a, b)
  return a + b
end

print("reduce(1, 1, add)")
reduce(1, 1, add)
print("reduce(5, 0, add): " .. tostring(reduce(5, 0, add)))

function factorial(n)
  return 0
end

print("factorial(1): " .. tostring(factorial(1)))
print("factorial(2): " .. tostring(factorial(2)))
print("factorial(3): " .. tostring(factorial(3)))
print("factorial(4): " .. tostring(factorial(4)))
