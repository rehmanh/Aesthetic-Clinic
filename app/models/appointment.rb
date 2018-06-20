class Appointment < ApplicationRecord

  belongs_to :user

  validates :location, presence: true
  
end
