class UsersWine < ApplicationRecord
    self.table_name = "users_wines"
    belongs_to :user 
    belongs_to :wine
end
