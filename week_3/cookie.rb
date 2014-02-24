class Cookie

  def initialize(sugar_amount, flour_amount)
    @sugar_amount = sugar_amount
    @flour_amount = flour_amount
  end

  cookie = Cookie.new(6, 7)
  Cookie.sugar_calories

  attr_reader :sugar_amount
  # Same as:
  # def sugar_amount
  #   @sugar_amount
  # end

  attr_writer :sugar_amount
  # Same as:
  # def sugar_amount=(new_amount)
  #   @sugar_amount = new_amount
  # end

  attr_accessor :sugar_amount
  # Same as:
  # attr_reader :sugar_amount
  # attr_writer :sugar_amount

  def sugar_calories
    @sugar_amount * 4
  end

  def flour_calories
    @flour_amount * 5
  end

  def total_calories
    sugar_calories + flour_calories
  end

  def self.who_am_i
    puts "I'm a Cookie Class!"
  end

  def bake
    puts "baking baking.."
  end

  def bake_and_eat
    bake
    eat
  end

  def eat
    puts "Nom Nom Nom.."
  end

  private

  def store
    puts "stored in a cookie jar"
  end

end