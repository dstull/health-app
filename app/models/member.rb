class Member < ApplicationRecord
  belongs_to :primary_care_physician, class_name: 'Doctor'
  has_many :appointments
  has_many :call_logs
  has_and_belongs_to_many :care_gaps
  has_many :completed_gaps
  validates :id_number, presence: true
  validates :id_number, uniqueness: true

  def display_name
    "#{first_name} #{last_name}"
  end
end
