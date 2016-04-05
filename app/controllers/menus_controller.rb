class MenusController < ApplicationController


	def new
		@food = Food.new

	end
		
	
private	
	def food_params
		params.require(:food).permit(:name,:description)
	end
end




