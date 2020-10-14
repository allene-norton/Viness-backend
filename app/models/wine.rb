class Wine < ApplicationRecord
    has_many :comments, dependent: :destroy
    has_many :users_wines
    has_many :users, through: :users_wines
end
