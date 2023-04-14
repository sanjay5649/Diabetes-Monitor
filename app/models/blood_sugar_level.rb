# == Schema Information
#
# Table name: blood_sugar_levels
#
#  id           :integer          not null, primary key
#  reading      :float
#  reading_date :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :integer
#
class BloodSugarLevel < ApplicationRecord
end
