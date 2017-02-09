# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

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

class WhizBangCalculator < FancyCalculator
  include SimpleCalculator 

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:
fc = FancyCalculator.new
wb = WhizBangCalculator.new
puts "1. Testing Addition FancyCalculator 2 + 2"
result = fc.add(2, 2)
puts "result: #{result}" 
if result == 4
  puts "pass"
else 
  puts "F"
end 
puts "----"
puts
puts "2. Testing Addition WhizBangCalculator 2 + 2"
result = wb.add(2, 2)
puts "result: #{result}" 
if result == 4
  puts "pass"
else 
  puts "F"
end

puts "----"
puts "3. Testing Subtraction 4 - 2"

result = fc.subtract(4, 2)
puts "result: #{result}" 
if result == 2
  puts "pass"
else 
  puts "F"
end 

puts "----"
puts "4. Testing Multiplication 4 * 2"

result = fc.multiply(4, 2)
puts "result: #{result}" 
if result == 8
  puts "pass"
else 
  puts "F"
end 

puts "----"
puts "5. Testing Division 4 / 2"

result = fc.divide(4, 2)
puts "result: #{result}" 
if result == 2
  puts "pass"
else 
  puts "F"
end 

puts "----"
puts "6. Testing Square Root 4 - FancyCalculator"

result = fc.square_root(4)
puts "result: #{result}" 
if result == 2
  puts "pass"
else 
  puts "F"
end 
puts "----"
puts "7. Testing Square Root 4 - WhizBangCalculator"

result = wb.square_root(4)
puts "result: #{result}" 
if result == 2
  puts "pass"
else 
  puts "F"
end 
puts
puts "----"
puts 
puts "Testing Hypotenuse"
result = wb.hypotenuse(6, 6)
puts "result: #{result}"
if result == 8.48528137423857
  puts "pass"
else 
  puts "F"
end 
puts
puts "Testing Exponent"
result = wb.exponent(2, 3)
puts "result: #{result}"
if result == 8
  puts "pass"
else 
  puts "F"
end 
