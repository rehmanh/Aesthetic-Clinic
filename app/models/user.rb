class User < ApplicationRecord
 

  has_secure_password

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true, format: { 
    with: /\w+@\w+\.\w+/ , 
    message: "entered is not valid. Please enter a valid email address." 
  }  
  validates :phone_number, format: { 
    with: /\d{11}/, 
    message: "entered is not valid. Please enter a valid phone number." 
  }

end
