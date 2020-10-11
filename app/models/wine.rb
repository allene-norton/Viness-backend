class Wine < ApplicationRecord
    has_many :users_wines
    has_many :users, through: :users_wines
end
