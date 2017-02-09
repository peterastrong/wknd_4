# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

module SimpleCalculator

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

class FancyCalculator

  include SimpleCalculator 

  def square_root(number)
    Math.sqrt(number)
  end

end

# Copy your driver code from the previous exercise below:
fc = FancyCalculator.new
puts "Testing Addition 2 + 2"
result = fc.add(2, 2)
puts "result: #{result}" 
if result == 4
  puts "pass"
else 
  puts "F"
end 

puts "----"
puts "Testing Subtraction 4 - 2"

result = fc.subtract(4, 2)
puts "result: #{result}" 
if result == 2
  puts "pass"
else 
  puts "F"
end 

puts "----"
puts "Testing Multiplication 4 * 2"

result = fc.multiply(4, 2)
puts "result: #{result}" 
if result == 8
  puts "pass"
else 
  puts "F"
end 

puts "----"
puts "Testing Division 4 / 2"

result = fc.divide(4, 2)
puts "result: #{result}" 
if result == 2
  puts "pass"
else 
  puts "F"
end 

puts "----"
puts "Testing Square Root 4"

result = fc.square_root(4)
puts "result: #{result}" 
if result == 2
  puts "pass"
else 
  puts "F"
end 

