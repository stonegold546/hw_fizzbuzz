## write your fizzbuzz method in this file
# see http://en.wikipedia.org/wiki/Fizz_buzz for details on FizzBuzz game
def fizzbuzz(size, &additional)
  result = (1..size).map { |x| fizz_worker x }
  additional ? result.each { |x| yield x } : result
end

def fizz_worker(num)
  if num % 3 == 0 && num % 5 == 0
    'FizzBuzz'
  elsif num % 3 == 0
    'Fizz'
  elsif num % 5 == 0
    'Buzz'
  else
    num
  end
end
