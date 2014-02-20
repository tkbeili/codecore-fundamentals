# Loop over the array above and print the city 
# names only and then loop again and display ratings 
# only.

city_ratings = {“vancouver” => 10, “Richmond” => 8, “Burnaby” => 7}

# displaying names
city_ratings.each_key {|x| puts x }
city_ratings.keys.each {|x| puts s }

# displaying ratings
city_ratings.each_value {|x| puts x }
city_ratings.values.each {|x| puts x }