class Procedure < ApplicationRecord

  validates :name, presence: true
  validates :description, presence: true

  validates :image_file_name, allow_blank: true, format: {
    with: /\w+\.(png|jpg|jpeg)\z/i,
    message: "must reference a PNG or JPEG filetype."
  }

end
