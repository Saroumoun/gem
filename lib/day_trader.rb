def create_hash(array_price)
  array_day = []
  day = 1

  while day <= array_price.size
    array_day << "jour #{day}"
	day += 1
  end

  my_hash = array_day.zip(array_price).to_h
  return my_hash
end

def diff_between_allday_dayzero(my_hash)
  jour_vente = 1
  sub_diff = {}

  while jour_vente < my_hash.size
	sub_diff["Achat : #{my_hash.keys[0]} - Vente : #{my_hash.keys[jour_vente]}"] = my_hash.values[jour_vente] - my_hash.values[0]
	jour_vente += 1
  end

  my_hash.shift

  sub_diff = sub_diff.select {|key,value| value == sub_diff.values.max}
  return sub_diff
end 


def loop_til_myhash_is_empty(my_hash)
  diff = {}

  while my_hash.size > 1
	diff.merge!(diff_between_allday_dayzero(my_hash))
  end 

  diff = diff.select {|key, value| value == diff.values.max}
  return diff
end

def day_trader(array_price)
  my_hash = create_hash(array_price)
  loop_til_myhash_is_empty(my_hash)
end

puts day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])
