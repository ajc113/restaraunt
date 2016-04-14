class FoodsController < ApplicationController
	def index
		@foods = Food.all.order(params[:id])
		@menus = Menu.all.order(:meal)
	end

	def new
		@food = Food.new
		@menu = Menu.new
		
	end

	def menu
		@menu = Menu.all
	end

	def create
		@food = Food.new(food_params)
		@menu= Menu.new(menu_params)


		if @food.save
			@menu.save

			flash[:notice] = "You have created a new Food item"
			redirect_to @food

		else  
			render 'error'
		end
	end

	def show
		@food = Food.find(params[:id])
		@menu = Menu.find(params[:id])
		
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
		params.require(:food).permit(:name,:description, menus_attributes: [:id, :meal, :cost])
	end

	def menu_params
		params.require(:menus).permit(:meal, :cost)
	end


end

