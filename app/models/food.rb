class Food < ApplicationRecord
    has_many :userfoods
    has_many :users, through: :userfoods
end