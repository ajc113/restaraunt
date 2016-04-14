class Menu < ActiveRecord::Base
has_many :foods

accepts_nested_attributes_for :foods


validates :meal, :cost, presence: true

end
