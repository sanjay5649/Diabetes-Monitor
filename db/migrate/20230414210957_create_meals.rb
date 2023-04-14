class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.integer :user_id
      t.string :name
      t.text :description
      t.date :date

      t.timestamps
    end
  end
end
