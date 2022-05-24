# frozen-string-literal: true

def fib(int)
  if int < 1
    return 0
  elsif int == 1
    return 1
  else
    return fib(int-1) + fib(int-2)
  end
end

def fibs(int)
  result = []
  int.times do |i|
    result << fib(i)
  end
  return result
end

# this method uses the helper method #fib
def fibs_rec(int, result=[])
  result << fib(int-1)
  return result.reverse if result.last == 0
  fibs_rec(int-1,result)
end

# #fibs_rec2 doesn't use #fib
def fibs_rec2(int, result=[])
  result.length < 2 ? result << result.length : result << result[-1] + result[-2]
  return result if int < 2
  fibs_rec2(int-1, result)
end

p fibs_rec2(8)