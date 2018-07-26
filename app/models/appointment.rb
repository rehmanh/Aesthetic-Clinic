class Appointment < ApplicationRecord

  belongs_to :user
  validates_associated :user

  validates :location, presence: true
  validates :complaint, presence: true, length: { 
    maximum: 200, 
    too_long: "description cannot exceed 200 characters."
  }
  validates_time :appointment_date_time, :between => ['3:00pm', '9:00pm'], 
                                         :message => 'must be between 3pm and 9pm.'
  validates_datetime :appointment_date_time, :after => lambda { DateTime.now.in_time_zone('UTC') }, 
                                             :after_message => 'must not be in the past.'

  validate :correct_location
  validates_uniqueness_of :appointment_date_time

  scope :upcoming, -> { where("appointment_date_time > ? AND completed = ?", DateTime.now.in_time_zone('UTC'), false) }
  scope :past, -> { where("appointment_date_time < ? AND completed = ?", DateTime.now.in_time_zone('UTC'), true) }

  Locations = [
    "National Medical Center",
    "Arif Defence Medical Center"
  ]

  private

  def correct_location
    errors.add(:location, "is not valid for an appointment") unless
      Locations.include?(location)
  end

  def self.expire_appointments
    if self.appointment_date_time < DateTime.now.in_time_zone('UTC')
      self.completed = true
    end
  end

end
