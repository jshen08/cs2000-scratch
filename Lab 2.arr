use context url-file("https://raw.githubusercontent.com/neu-pdi/cs2000-public-resources/refs/heads/main/static/","cs2000.arr")

fun encryptor0(s :: String) -> String:
  doc: "returns the first letter of the string" 
  string-substring(s, 0, 1)
  
where:
  # Doesn't work on empty strings
  encryptor0("") raises "index"
  # Otherwise, returns first letter
  encryptor0("a") is "a"
  encryptor0(" ") is " "
  encryptor0("hello") is "h"
  encryptor0("1, ") is "1"
end

encryptor0("hello")
encryptor0("people")

support.encryptor1

fun my-encryptor1(s :: String) -> String: ... end 


support.encryptor1("hello")