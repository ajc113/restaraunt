class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :meal
      t.integer :cost

      t.timestamps null: false
    end
  end
end
