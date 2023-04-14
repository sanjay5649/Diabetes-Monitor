# == Schema Information
#
# Table name: meal_logs
#
#  id            :integer          not null, primary key
#  calories      :float
#  carbohydrates :float
#  food_item     :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  meal_id       :integer
#
class MealLog < ApplicationRecord
end
