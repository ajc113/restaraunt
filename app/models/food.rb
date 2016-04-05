class Food < ActiveRecord::Base
	belongs_to :dinner
	belongs_to :breakfast
	belongs_to :lunch

end
