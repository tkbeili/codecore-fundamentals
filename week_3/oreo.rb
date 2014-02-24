require "./cookie.rb"
require "./car.rb"

class Oreo < Cookie
  attr_accessor :filling_amount

  def eat
    puts "Dip in milk!"

    super
  end

end