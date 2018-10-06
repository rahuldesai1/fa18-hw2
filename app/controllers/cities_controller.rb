class CitiesController < ApplicationController
	def view
		render 'view'
	end

	def create
		if params[:name] and params[:landmark] and params[:population]
			new_city = City.new params
			new_city.save
		end
		redirect_to :action => 'view'
	end

	def new
		render 'new'
	end

	def update
		c = City.all[params[:name]]
		c.update(params)
	end 

end