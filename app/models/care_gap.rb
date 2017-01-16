class CareGap < ApplicationRecord
  has_many :completed_gaps
  has_and_belongs_to_many :members
end
