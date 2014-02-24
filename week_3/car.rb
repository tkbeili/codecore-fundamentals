class Car
  
  def initialize(model = "", capacity=4, type = nil)
    @model    = model
    @type     = type
    @capacity = capacity
  end

  def drive(distance = 50)
    ignite_engine
    puts "Driving #{distance} kilometers"
  end

  def stop
    puts "Stopping."
  end

  def park
    puts "parking.."
  end

  def self.max_speed
    200
  end

  private

  def pump_gas
    puts "pumping gas.."
  end

  def ignite_engine
    puts "engine started.."
  end

end