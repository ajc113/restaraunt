class FoodsController < ApplicationController
  def index
  end

  def new
  	@food = Food.new
  end

  def create
		@food = Food.new(food_params)
		if @food.save
			flash[:success] = "You have created a new Food item"
			redirect_to @food

		else  
			render 'new'
	end

	def show
		@food = Food.find(params[:id])
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
