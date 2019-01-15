def sum_of_3_or_5_multiples(n)

  return sum
end



def is_multiple_of_3_or_5?(num)
  if num % 3 == 0 || num % 5 == 0
  	answer = true
  else 
  	answer = false 
  end
  return answer
end

is_multiple_of_3_or_5?(3) #=> true
is_multiple_of_3_or_5?(7) #=> false
is_multiple_of_3_or_5?(5)
is_multiple_of_3_or_5?(51)