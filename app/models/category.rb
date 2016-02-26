class Category < ActiveRecord::Base
  has_many :events

  validates :name, presence: true

  mount_uploader :image, ImageUploader
end
