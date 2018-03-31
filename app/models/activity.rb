class Activity < ApplicationRecord
  belongs_to :location
  validates :title, presence: :true
  validates :description, presence: :true
  mount_uploader :image, ImageUploader
end
