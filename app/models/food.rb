class Food < ActiveRecord::Base
	belongs_to :menus

	accepts_nested_attributes_for :menus

	validates :name, :description, presence: true
	
end
	