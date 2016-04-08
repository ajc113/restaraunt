class Food < ActiveRecord::Base
validates :name, :description, :menu, presence: true

	belongs_to :dinner
	belongs_to :breakfast
	belongs_to :lunch
	
end
