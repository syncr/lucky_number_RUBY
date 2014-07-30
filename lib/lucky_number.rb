
def lucky_number(number)
 
  numbers = number.to_s.split('').map { |each| each.to_i  }
  front_half = numbers[0..numbers.length/2 -1].inject(:+)
  back_half = numbers[(numbers.length/2.0).ceil..-1].inject(:+)

  if number.is_a?(Integer) == false
    "Please enter a number"
  elsif back_half == nil
    "Please enter a number with more than one digit"
  elsif front_half == back_half 
    "You are lucky"
  else "Sorry you are not lucky"  
  end
end

p lucky_number(5673875)