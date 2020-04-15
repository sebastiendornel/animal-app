class User < ApplicationRecord
    has_many :adoptions
    has_many :animals, through: :adoptions
end
