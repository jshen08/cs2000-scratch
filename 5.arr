use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")

fun choose-hat(temp-in-F :: Number) -> String:
  doc: "determines appropriate headgear, above 80F sun hat, below nothing"
  if temp-in-F > 80:
    "sun hat"
  else:
    "no hat"
  end
  
where: 
  choose-hat(50) is "no hat"
  choose-hat(85) is "sun hat"
  choose-hat(80) is "sun hat"
end
