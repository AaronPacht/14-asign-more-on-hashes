# Exercise

digits = ['1','2','3','4','5','6','7','8','9']
en = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
fr = ['un','deux','trois','quatre','cinq','six','sept','huit','neuf']

# Write the necessary code to transform these arrays into a hash with the following format:

# {
#   1: {french: 'un', english: 'one'},
#   2: {french: 'deux', english: 'two'},
#   3: {french: 'trois', english: 'three'},
#   ...
#   9: {french: 'neuf', english: 'nine'}
# }


hash={} #Create hash to hold everything
digits.each do |a| #Run through array with digits
  hash[a.to_i]={"french": fr[a.to_i-1], "english": en[a.to_i-1]} #Make that digit the key, and the index of that digit minus one the translation for each language
end
puts hash #Print hash