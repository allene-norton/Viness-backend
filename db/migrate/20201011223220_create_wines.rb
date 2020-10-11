class CreateWines < ActiveRecord::Migration[6.0]
  def change
    create_table :wines do |t|
      t.integer :spn_id
      t.string :title
      t.float :avg_rating
      t.string :description
      t.string :image
      t.string :link
      t.string :price
      t.float :rating_count
      t.float :score

      t.timestamps
    end
  end
end
