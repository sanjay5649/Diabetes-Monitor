class CreateExerciseLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :exercise_logs do |t|
      t.integer :user_id
      t.string :exercise_name
      t.integer :duration_minutes
      t.float :calories_burned
      t.date :exercise_date

      t.timestamps
    end
  end
end
