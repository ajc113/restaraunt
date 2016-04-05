class Food < ActiveRecord::Base
	belongs_to :dinner
	belongs_to :breakfast
	belongs_to :lunch
	validates :description, length: { maximum: 50 }
end
