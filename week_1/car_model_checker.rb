car_year = gets.chomp.to_i

puts "Car is future"   unless car_year <= 2014
puts "Car is new"      unless car_year <= 2005 || car_year > 2014
puts "Car is Old"      unless car_year <= 2000 || car_year > 2005
puts "Car is Very Old" unless car_year > 2000

if car_year > 2014
  puts "Car is future"
elsif car_year > 2011
  puts "car is new"
elsif car_year > 2005
  puts ""
end