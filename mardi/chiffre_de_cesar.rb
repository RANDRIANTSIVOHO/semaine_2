def Chiffre_de_cesar(string, shift = 5)
  alphabet  = Array('a'..'z')
  non_caps  = alphabet.zip(alphabet.rotate(shift)).to_h
  alphabet = Array('A'..'Z')
  caps     = alphabet.zip(alphabet.rotate(shift)).to_h
  encrypter = non_caps.merge(caps)
  string.chars.map { |c| encrypter.fetch(c, c) }
end
puts Chiffre_de_cesar("What a string!").join