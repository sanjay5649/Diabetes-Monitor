class CreateMealLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :meal_logs do |t|
      t.integer :meal_id
      t.string :food_item
      t.float :carbohydrates
      t.float :calories

      t.timestamps
    end
  end
end
