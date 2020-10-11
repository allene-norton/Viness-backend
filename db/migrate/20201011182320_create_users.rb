class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :id_token
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :image
      t.string :location

      t.timestamps
    end
  end
end
