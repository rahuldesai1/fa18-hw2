require_relative "../services/weather_service"

class MainController < ApplicationController

  def index
    # Uncomment and pass a parameter to the get function
    @w = WeatherService.get(params[:city])
    if @w
	    city = City.new(
	    	name: params[:city],
	    	temperature: @w[:temperature],
	    	description: @w[:description]	
	    	)
	    city.save
	end
  end


end
