class Listing < ApplicationRecord
	mount_uploader :image, ImageUploader

	validates :name, :description, :price, presence: true
	validates :price, numericality: { greater_then: 0 }
	validates_absence_of :image
end
