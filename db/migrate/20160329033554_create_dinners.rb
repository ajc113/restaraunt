class CreateDinners < ActiveRecord::Migration
  def change
    create_table :dinners do |t|
   			t.string :menu_item
      		t.string :food
      t.timestamps null: false
    end
  end
end
