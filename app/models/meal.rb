# == Schema Information
#
# Table name: meals
#
#  id          :integer          not null, primary key
#  date        :date
#  description :text
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
class Meal < ApplicationRecord
end
