
def lucky_number(number)
  numbers=number.to_s.split('')

  if numbers.length%2==0
    "You are lucky"
  end

end

lucky_number(5234)