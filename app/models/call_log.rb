class CallLog < ApplicationRecord
  belongs_to :member
  belongs_to :user
  has_many :appointments
  has_many :completed_gaps

  #accepts_nested_attributes_for :appointments, :completed_gaps
  accepts_nested_attributes_for :appointments, reject_if: :all_blank, allow_destroy: true

end
