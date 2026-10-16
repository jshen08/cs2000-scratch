use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")

# Part 1
fun size-price(Size :: String) -> Number:
  doc: "categorizes the price based on size of the smoothie"
  s = string-to-lower(Size)
  if Size == "small":
    4
  else if s == "medium":
    6
  else if s == "large":
    8
  else:
    raise("Invalid size")
  end
where:
  size-price("small") is 4
  size-price("medium") is 6
  size-price("large") is 8
  size-price("LaRgE") is 8
  size-price("big") raises "Invalid size"
end
  
# Part 2
fun add-in-price(add-ins :: Number) -> Number:
  doc: "Calculates the cost of the add-ins for customers' orders"
  if (add-ins == 0) or (add-ins == 1):
    0
  else:
    (add-ins - 1) * 0.75
  end
  
where:
  add-in-price(0) is 0
  add-in-price(1) is 0
  add-in-price(4) is 2.25
  add-in-price(8) is 5.25
end

#Part 3
fun order-total(Size :: String, add-ins :: Number, is-student :: Boolean) -> Number:
  doc: "Calculates the total cost of an order"
  if is-student:
    0.90 * (size-price(Size) + add-in-price(add-ins))
  else:
    size-price(Size) + add-in-price(add-ins)
  end
  
where:
  order-total("small", 0, false) is 4
  order-total("large", 2, false) is 8.75
  order-total("medium", 1, true) is 5.4
  order-total("small", 0, true) is 3.6
end

#Part 4
fun receipt(customer-name :: String, Size :: String, add-ins :: Number, is-student :: Boolean) -> String:
  doc: "Prints a receipt with the customer name, size, add-ins, and whether or not the customer is a student"
  middle = 
    if is-student:
      Size + " smoothie, " + num-to-string(add-ins) + " add-ins" + " (student)"
    else:
      Size + " smoothie, " + num-to-string(add-ins) + " add-ins"
    end

  bottom = 
  "Total: $" + num-to-string(order-total(Size, add-ins, is-student))

  print(customer-name + "\n" + middle + "\n" + bottom)
  
where:
  receipt("Gareth", "Large", 67, true) is "Gareth\nLarge smoothie, 67 add-ins (student)\nTotal: $207/4"
end


  

    
   
  
  
    
