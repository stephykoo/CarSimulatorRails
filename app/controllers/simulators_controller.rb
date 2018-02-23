class SimulatorsController < ApplicationController
  def create

  end

  def status
    @car = Car.new(params[:make], params[:year], params[:carColor])
    session[:car] = @car.to_yaml
  end

end
