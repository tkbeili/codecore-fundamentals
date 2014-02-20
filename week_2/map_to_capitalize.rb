# Write code that takes an array of names and capitalize 
# each element in it
names = ["aswin", "tam", "jay"]

names.map {|y| y.capitalize }

# A shortcut
names.map(&:capitalize)

# Stretch: Make it capitalized then reversed
names.map {|y| y.capitalize.reverse }