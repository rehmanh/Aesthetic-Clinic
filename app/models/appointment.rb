class Appointment < ApplicationRecord

  belongs_to :user

  validates :location, presence: true
  validates :complaint, presence: true, length: { 
    maximum: 200, 
    too_long: "description cannot exceed 200 characters."
  }
  validates_datetime :appointment_date_time, :after => lambda { DateTime.now.in_time_zone('UTC') }, 
                                             :after_message => 'must not be in the past.'

 end
