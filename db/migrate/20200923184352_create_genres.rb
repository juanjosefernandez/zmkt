class CreateGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :genres do |t|
      t.string :name
      t.text :desc
      t.timestamps
    end

    create_table :listings_genres, id: false do |t|
      t.belongs_to :listing
      t.belongs_to :genre
    end
  end
end
