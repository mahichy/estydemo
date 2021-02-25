class Listing < ApplicationRecord
	mount_uploader :image, ImageUploader

	validates :name, :description, :price, presence: true
	validates :price, numericality: { greater_then: 0 }
	validates :image, presence: true

	belongs_to :user
	has_many :orders
end
