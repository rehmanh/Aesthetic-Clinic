class Appointment < ApplicationRecord

  belongs_to :user

  validates :location, presence: true
  validates :time_of_appointment, presence: true
  validates :date_of_appointment, presence: true

  def self.exists?
    count == 0 || count == nil?
  end
  
end
