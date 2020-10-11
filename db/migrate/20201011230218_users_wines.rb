class UsersWines < ActiveRecord::Migration[6.0]
  def change
    create_table :users_wines do |t|
      t.integer :user_id, null: false
      t.integer :wine_id, null: false
      t.timestamps
    end
  end
end
