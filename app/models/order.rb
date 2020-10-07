class Order < ApplicationRecord
    validates :address, :city, :state, presence: true
    
    # belongs_to :cart
    has_many :line_items, dependent: :destroy

end
