class User < ApplicationRecord
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /\w+@\w+\.\w+/ , message: "Please enter a valid email address" }  
  validate :validate_phone_number

private

  def validate_phone_number
    if phone_number !~ /\d{11}/
      flash[:notice] = "Please enter a valid phone number"
    end
  end

end
