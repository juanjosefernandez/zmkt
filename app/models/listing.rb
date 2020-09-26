class Listing < ApplicationRecord
    has_one_attached :image 
    has_and_belongs_to_many :genres
    has_and_belongs_to_many :creators
    has_and_belongs_to_many :subjects
    has_and_belongs_to_many :media
    has_and_belongs_to_many :publishers


    validates :name, :description, :price, presence: true
    validates :price, numericality: { greater_than: 0 }
    validates :image, attached: true, content_type: ['image/png', 'image/jpg', 'image/jpeg']

    belongs_to :user
end