class LineItem < ApplicationRecord
  belongs_to :listing
  belongs_to :cart, optional: true
  belongs_to :order, optional: true

  def total_price
    listing.price * quantity.to_i
  end
end
