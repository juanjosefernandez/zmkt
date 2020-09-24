class CreateJoinTableListingsGenres < ActiveRecord::Migration[6.0]
  def change
    create_join_table :listings, :genres do |t|
      # t.index [:listing_id, :genre_id]
      # t.index [:genre_id, :listing_id]
    end
  end
end
