class CompletedGap < ApplicationRecord
  belongs_to :care_gap
  belongs_to :doctor
  belongs_to :member
end
