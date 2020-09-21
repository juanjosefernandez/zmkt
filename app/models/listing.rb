class Listing < ApplicationRecord
    has_one_attached :image 

    validates :name, :description, :price, presence: true
    validates :price, numericality: { greater_than: 0 }
    validates :image, attached: true, content_type: ['image/png', 'image/jpg', 'image/jpeg']

    belongs_to :user
end
