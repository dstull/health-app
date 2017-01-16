class Doctor < ApplicationRecord
  has_many :completed_gaps
  has_many :members, foreign_key: :primary_care_physician_id
  has_many :appointments
end
