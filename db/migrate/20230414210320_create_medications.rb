class CreateMedications < ActiveRecord::Migration[6.0]
  def change
    create_table :medications do |t|
      t.integer :user_id
      t.string :name
      t.float :dosage
      t.string :frequency
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
