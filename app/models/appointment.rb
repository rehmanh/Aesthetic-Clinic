class Appointment < ApplicationRecord

  belongs_to :user

  validates :location, presence: true
  validates :complaint, presence: true, length: { 
    maximum: 200, 
    too_long: "description cannot exceed 200 characters."
  }
  validate :appointment_date_cannot_be_in_past

  def appointment_date_cannot_be_in_past
    errors.add(:appointment_date_time, "cannot be in the past") if
      appointment_date_time <= DateTime.now.in_time_zone('UTC')
  end

  # def self.exists?
  #   count == 0 || count == nil?
  # end

  

end
