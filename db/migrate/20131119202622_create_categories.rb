class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :category_name
      t.integer :restaurant_id

      t.timestamps
    endset 
  end
end
