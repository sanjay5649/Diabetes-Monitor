# == Schema Information
#
# Table name: exercise_logs
#
#  id               :integer          not null, primary key
#  calories_burned  :float
#  duration_minutes :integer
#  exercise_date    :date
#  exercise_name    :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :integer
#
class ExerciseLog < ApplicationRecord
end
