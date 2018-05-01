# In this exercise, generate two methods of printing out fibonacci sequences
# First method will use an iterator and second will use recursive principle


def fibs(n)
  arr = [0, 1]
  (n-1).times do
    arr << arr[-1] + arr[-2]
    end
  return arr
end

puts fibs(10)

# Recursive fibonacci

def fibs_rec (n, fib = [0,1])
  if n < 2
    return fib
  else
    fib << fib[-1] + fib[-2]
    fibs_rec(n-1, fib)
  end
end

puts fibs_rec (10)
