class MenusController < ApplicationController


	def new
		@food = Food.new

	end
		
	def create
		@food = Food.new(food_params)
		if @food.save
			flash[:success]= "Congrats on New Food item"
			redirect_to new_path

		else  
			puts "#{@food.errors}\n\n"
			puts "#{@food.errors.inspect}"
			render 'new'
	end

	def update
		@food = Food.new
	end
end

private	
	def food_params
		params.require(:food).permit(:name,:description)
	end
end




