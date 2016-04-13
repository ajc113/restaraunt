class FoodsController < ApplicationController
	def index
		@foods = Food.all.order("created_at DESC")
	end

	def new
		@food = Food.new
		@menus = Menu.new
		
	end

	def create
		@food = Food.new(food_params)
		@menus = Menu.new[menu_params]


		if @food.save
		

			flash[:notice] = "You have created a new Food item"
			redirect_to @food

		else  
			render 'error'
		end
	end

	def show
		@food = Food.find(params[:id])
		
	end

	def edit
	#@food = Food.find(params[:id])
	
	end
	
	def update
		#@food = Food.find(params[:id])
		#if @food.update(food_params)
		#	redirect_to @food
		#else 
		#	render 'edit'
	end




	private	
	
	def food_params
		params.require(:food).permit(:name,:description, menu_attributes: [:meal_selection, :cost])
	end

	def menu_params
		params.require(:menus).permit(:meal_selection, :cost)
	end


end
