class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :name
      t.decimal :price
      t.integer :user_id
      t.integer :quantity
      t.integer :page_count
      t.boolean :sold_by_creator
      t.decimal :weight

      t.timestamps
    end
  end
end
