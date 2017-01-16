class Appointment < ApplicationRecord
  belongs_to :member
  belongs_to :doctor
  belongs_to :call_log
end
