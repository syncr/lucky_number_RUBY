
def lucky_number(number)
  numbers = number.to_s.split('').map { |each| each.to_i  }
  # front_half = numbers.length/2.floor
  front_half = numbers[0..numbers.length/2 -1]
  back_half = numbers[(numbers.length/2.0).ceil..-1]

  back_half = back_half.inject(:+)
  front_half = front_half.inject(:+)

  if front_half == back_half 
    "You are lucky"
  end
end

lucky_number(524434)