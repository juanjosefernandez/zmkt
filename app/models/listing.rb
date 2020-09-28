class Listing < ApplicationRecord
    has_one_attached :image 
    has_and_belongs_to_many :types
    has_and_belongs_to_many :media


    validates :name, :description, :price, presence: true
    validates :price, numericality: { greater_than: 0 }
    validates :image, attached: true, content_type: ['image/png', 'image/jpg', 'image/jpeg']

    belongs_to :user
    self.per_page = 10

end