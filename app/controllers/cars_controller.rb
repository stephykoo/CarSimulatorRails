class CarsController < ApplicationController
  def accelerate
    @car = YAML.load(session[:car])
    @car.accelerate
    session[:car] = @car.to_yaml
# each accelerate method is called in the car class, the speed is incremented by 10 and is stored back in session. Continues to be taken out into @car and then incremented 10 again and so forth.
    render 'simulators/status'
  end

  def brake
    @car = YAML.load(session[:car])
    @car.brake
    session[:car] = @car.to_yaml
    render 'simulators/status'
  end

  def lights
    @car = YAML.load(session[:car])
    @car.lights_toggle
    session[:car] = @car.to_yaml
    render 'simulators/status'
  end

  # def brake_set
  #   @car = YAML.load(session[:car])
  #   @car.brake_set
  #   session[:car] = @car.to_yaml
  #   render 'simulators/status'
  # end
  #
  # def brake_release
  #   @car = YAML.load(session[:car])
  #   @car.brake_release
  #   session[:car] = @car.to_yaml
  #   render 'simulators/status'
  # end

  def brake_set
    @car = YAML.load(session[:car])
    if params[:brake].nil?

    elsif params[:brake] == @car.brake

    else
      @car.brake_switch
    end

    session[:car] = @car.to_yaml
    render 'simulators/status'
  end

  def carColor
    @car = YAML.load(session[:car])
    @car.color
    session[:car] = @car.to_yaml
    render 'simulators/status'
  end
end
