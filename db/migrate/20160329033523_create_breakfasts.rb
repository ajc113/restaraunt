class CreateBreakfasts < ActiveRecord::Migration
  def change
    create_table :breakfasts do |t|
    	 	t.string :menu
      		t.string :name
      		t.string :description
      		
      t.timestamps null: false
    end
  end
end
