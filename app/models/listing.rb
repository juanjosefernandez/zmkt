class Listing < ApplicationRecord
    Gutentag::ActiveRecord.call self
    has_and_belongs_to_many :genres
    has_one_attached :image 

    validates :name, :description, :price, presence: true
    validates :price, numericality: { greater_than: 0 }
    validates :image, attached: true, content_type: ['image/png', 'image/jpg', 'image/jpeg']

    belongs_to :user
end
