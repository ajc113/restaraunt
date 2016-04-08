class CreateDinners < ActiveRecord::Migration
  def change
    create_table :dinners do |t|
   			t.string :menu
      		t.string :name
      		t.string :description
      t.timestamps null: false
    end
  end
end
