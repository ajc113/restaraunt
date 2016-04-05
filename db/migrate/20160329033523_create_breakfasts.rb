class CreateBreakfasts < ActiveRecord::Migration
  def change
    create_table :breakfasts do |t|
    	 	t.string :menu_item
      		t.string :food
      		
      t.timestamps null: false
    end
  end
end
