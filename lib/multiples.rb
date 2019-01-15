def is_multiple_of_3_or_5?(num)
  if num % 3 == 0 || num % 5 == 0
  	answer = true
  else 
  	answer = false 
  end
  return answer
end

def sum_of_3_or_5_multiples(n)
  sum = 0
  # lancement d'une boucle qui va de 0 au chiffre n EXCLU (car on est sur du strictement inférieur)
  for i in 1...n
    # cette boucle indente à chaque tour une variable (par exemple i)
    if is_multiple_of_3_or_5?(i)
      # si la réponse est "true", alors je rajoute la valeur de i à une somme que je retournerais en fin de fonction (mon return final).
      sum += i
    else
      # si la réponse est "false"…ben y a pas de else. Si i n'est pas multiple, on passe au i suivant.
      next
    end
  #fin de la boucle
  end

  puts sum
end

sum_of_3_or_5_multiples(11) #=> 33
sum_of_3_or_5_multiples(10) #=> 23





