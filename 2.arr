use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")

circle(30, "solid", "blue")
rectangle(40, 20, "solid", "green")
triangle(50, "outline", "black")

string-to-upper("hello cs2000")

overlay(circle(30, "solid", "blue"),
  rectangle(100, 40, "solid", "green"))

rotate(90, rectangle(100, 20, "solid", "red"))

white-octagon = regular-polygon(210, 8, "solid", "white")
red-octagon = regular-polygon(180, 8, "solid", "red")
stop-text = text("STOP", 55, "white")

stop-sign = overlay(stop-text, overlay(red-octagon, white-octagon))

stop-sign