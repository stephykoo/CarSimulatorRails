class Car
  attr_accessor :make, :year, :speed, :lights, :color
  def initialize (make, year, color)
    @make = make
    @year = year
    @speed = 0
    @lights = false
    @brake = false
    @color = color
  end

  def accelerate
    if @break == false
      @speed += 10
    end
  end

  def brake
    if @speed > 6
      @speed -= 7
    else
      @speed = 0
    end
end

  def lights
    if @lights == false
      p "The light is off"
    else
      p "The light is on"
    end
  end

  def lights_toggle
    @lights ^= true
  end

  def brake_switch
    if @brake == false && @speed == 0
      @brake = true
    else
      @brake = false
    end
  end


  def brake_status
    if @brake == false
      p "The brake is off"
    else
      p "The brake is on"
    end
  end

  def color
    @color
  end
end
