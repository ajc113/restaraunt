class Food < ActiveRecord::Base
	belongs_to :menu



	validates :name, :description, presence: true
	
end
	