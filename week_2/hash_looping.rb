# Write a hash that three contains Canadian provinces 
# as keys and their capital as values then loop 
# through it and print each province and its capital
canadian_cities = {"BC" => "Victoria", "ON" => "Ottawa", "Nova Scotia" => "Halifax"}

canadian_cities.each do |k, v|
  puts "The Capital of #{k} is #{v}"
end