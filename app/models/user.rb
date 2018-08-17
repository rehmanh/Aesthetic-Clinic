class User < ApplicationRecord
 
  has_many :appointments, dependent: :destroy
  has_one :patient_record, as: :recordable
  # accepts_nested_attributes_for :patient_record
  has_secure_password

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true, format: { 
    with: URI::MailTo::EMAIL_REGEXP,
    message: "entered is not valid. Please enter a valid email address." 
  }  
  validates :phone_number, format: { 
    with: /((\+92)|(0092)|(03\d{2}))-{0,1}\d{3}-{0,1}\d{7}$|^\d{11}$|^\d{4}-\d{7}/, 
    message: "entered is not valid. Please enter your entire mobile phone number, or separated by dashes ('-')." 
  }
  validates :password, length: { minimum: 8, maximum: 32 }, on: :create

  def has_max_appointments
    errors.add(:appointments, "limit exceeded. You cannot schedule more than two active appointments at once.") if
      appointments.upcoming.size >= 2
  end

end
