class Appointment < ApplicationRecord

  belongs_to :user

  validates :location, presence: true
  validates :time_of_appointment, presence: true
  validates :date_of_appointment, presence: true
  validate :appointment_date_cannot_be_in_the_past, 
    :appointment_time_cannot_be_in_the_past,
    :appointments_cannot_clash
  validates :complaint, presence: true, length: { 
    maximum: 200, 
    too_long: "description cannot exceed 200 characters."
  }

  def self.exists?
    count == 0 || count == nil?
  end

  def appointment_date_cannot_be_in_the_past
    errors.add(:date_of_appointment, "can't be in the past") if
      !date_of_appointment.blank? and date_of_appointment < Date.today
  end

  def appointment_time_cannot_be_in_the_past
    errors.add(:time_of_appointment, "can't be in the past") if
      time_of_appointment < Time.now
  end

  def appointments_cannot_clash 
  end
  
end
