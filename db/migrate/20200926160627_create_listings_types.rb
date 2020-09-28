class CreateListingsTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :listings_types, :id => false do |t|
      t.integer :listing_id
      t.integer :type_id
    end
  end
end
