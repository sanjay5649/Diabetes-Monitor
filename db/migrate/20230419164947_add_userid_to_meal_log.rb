class AddUseridToMealLog < ActiveRecord::Migration[6.0]
  def change
    add_column :meal_logs, :user_id, :integer
  end
end
