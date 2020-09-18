class AddUserIdToListings < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :user_id, :integer
  end
end
