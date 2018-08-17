class PatientRecord < ApplicationRecord
  belongs_to :recordable, polymorphic: true
  
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

end
