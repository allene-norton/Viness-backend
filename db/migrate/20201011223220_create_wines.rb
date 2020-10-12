class CreateWines < ActiveRecord::Migration[6.0]
  def change
    create_table :wines do |t|
      t.integer :spn_id
      t.string :title
      t.float :averageRating
      t.string :description
      t.string :imageUrl
      t.string :link
      t.string :price
      t.float :ratingCount
      t.float :score

      t.timestamps
    end
  end
end
