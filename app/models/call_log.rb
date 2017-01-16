class CallLog < ApplicationRecord
  belongs_to :member
  belongs_to :user
  has_many :appointments
  has_many :completed_gaps
end
