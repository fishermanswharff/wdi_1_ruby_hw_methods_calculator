# calculator v.1.0, only takes simple arithmetic in the form of (fixnum +/-/*/÷ fixnum)
def process_calc(string)
  numbers = string.scan(/[\d]+/)
  operators = string.scan(/[\+\-\*\/]/)
  groups = string.scan(/([\(]+)([\d]+)([\+\-\*\/]+)([\d]+)([\)]+)/)
  set_calc(numbers,operators,groups)
end

def set_calc(numbers,operators,groups)
  result = operators.map { |i| numbers[0].to_i.method(i).(numbers[1].to_i) }
  puts "The answer is #{result[0]}"
end

puts "Calculator can add, subtract, multiply, and divide. Try it"
process_calc(gets.chomp)







































