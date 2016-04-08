class CreateLunches < ActiveRecord::Migration
  def change
    create_table :lunches do |t|
    		t.string :menu
      		t.string :name
      		t.string :description
      t.timestamps null: false
    end
  end
end
