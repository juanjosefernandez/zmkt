class CreateJoinTableListingMedium < ActiveRecord::Migration[6.0]
  def change
    create_join_table :listings, :media do |t|
      # t.index [:listing_id, :medium_id]
      # t.index [:medium_id, :listing_id]
    end
  end
end
