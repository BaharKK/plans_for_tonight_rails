class Event < ActiveRecord::Base
  belongs_to :corporate
  belongs_to :category
  has_many :tickets

  validates :name, presence: true
  validates :location, presence: true
  validates: :description, presence: true
  validates: :show_date, presence: true
  validates: :start_time, presence: true
  validates: :duration, numericality: { only_integer: true }
  validates: :image, presence: true

  mount_uploader :image, ImageUploader
end
