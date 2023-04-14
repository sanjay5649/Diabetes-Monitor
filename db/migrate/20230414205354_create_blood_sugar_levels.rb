class CreateBloodSugarLevels < ActiveRecord::Migration[6.0]
  def change
    create_table :blood_sugar_levels do |t|
      t.integer :user_id
      t.float :reading
      t.datetime :reading_date

      t.timestamps
    end
  end
end
