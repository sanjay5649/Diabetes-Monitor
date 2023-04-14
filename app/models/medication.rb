# == Schema Information
#
# Table name: medications
#
#  id         :integer          not null, primary key
#  dosage     :float
#  end_date   :date
#  frequency  :string
#  name       :string
#  start_date :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class Medication < ApplicationRecord
end
