class Animal < ApplicationRecord
    has_many :adoptions
    has_many :users, through: :adoptions
    belongs_to :shelter
end
