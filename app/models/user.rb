class User < ApplicationRecord
    has_many :userfoods
    has_many :foods, through: :userfoods
end