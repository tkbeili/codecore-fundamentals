print "Enter a sentence: "
sentence = gets.chomp

words = sentence.split(" ")

words.each do |word|
  print word.capitalize + " "
end