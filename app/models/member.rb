class Member < ApplicationRecord

  validates :id_number, presence: true
  validates :id_number, uniqueness: true
end
