class Listing < ApplicationRecord
    before_destroy :not_referenced_by_any_line_item
    has_one_attached :image 
    has_and_belongs_to_many :types
    has_and_belongs_to_many :media

    has_many :line_items


    validates :name, :description, :price, presence: true
    validates :price, numericality: { greater_than: 0 }
    validates :image, attached: true, content_type: ['image/png', 'image/jpg', 'image/jpeg']

    belongs_to :user
    self.per_page = 10

    private
    def not_referenced_by_any_line_item
        unless line_items.empty?
            errors.add(:base, "Line items present")
            throw :abort
        end
    end

end