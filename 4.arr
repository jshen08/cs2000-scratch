use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")


fun welcome(name :: String):
  "Welcome to class, " + name
end

welcome("johnny")

fun three-layer-cake(top, middle, bottom):
  above(rectangle(100, 30, "solid", top),
    above(rectangle(100, 30, "solid", middle),
  rectangle(100, 30, "solid", bottom)))
end

three-layer-cake("red", "orange", "blue")