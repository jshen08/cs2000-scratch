use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")

  items = table: item :: String, x-coordinate :: Number, y-coordinate :: Number
    row: "Sword of Dawn",           23,  -87
    row: "Healing Potion",         -45,   12
    row: "Dragon Shield",           78,  -56
    row: "Magic Staff",             -9,   64
    row: "Elixir of Strength",      51,  -33
    row: "Cloak of Invisibility",  -66,    5
    row: "Ring of Fire",            38,  -92
    row: "Boots of Swiftness",     -17,   49
    row: "Amulet of Protection",    82,  -74
    row: "Orb of Wisdom",          -29,  -21
  end 

fun calc-distance(r :: Row) -> Number:
  doc: "does distance to origin from fields 'x-coordinate' and 'y-coordinate'"
  num-sqrt(num-sqr(get-column(r, "x-coordinate")) + num-sqr(get-column(r, "y-coordinate")))
where:
  calc-distance(get-row(items, 0)) is-roughly num-sqrt(num-sqr(23) + num-sqr(-87))
  calc-distance(get-row(items, 3)) is-roughly num-sqrt(num-sqr(-9) + num-sqr(64))
end

fun scale-down(n :: Number) -> Number:
  doc: "scales down a coordinae by 10%"
  n * 0.9
where:
  scale-down(100) is 90
  scale-down(50) is 45
end

scaled-x= transform-column(items, "x coordinate", scale-down)
