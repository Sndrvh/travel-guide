class Location < ApplicationRecord
  has_many :activities
  validates :title, presence: :true
  validates :subtitle, presence: :true
  mount_uploader :header_image, ImageUploader
end
