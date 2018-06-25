class Appointment < ApplicationRecord

  belongs_to :user

  validates :location, presence: true
  validates :complaint, presence: true, length: { 
    maximum: 200, 
    too_long: "description cannot exceed 200 characters."
  }
  validates :appointment_date_time, date: true

  # def self.exists?
  #   count == 0 || count == nil?
  # end

  

end
