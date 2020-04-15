class User < ApplicationRecord
    has_many :adoptions
    has_many :animals, through: :adoptions

    validates :name, presence: true, format: {with: /[a-zA-Z]/}
    validates :age, presence: true, numericality: true
    validates :address, presence: true, format: {with: /[a-zA-Z]/}
    validates :bio, presence: true, format: {with: /[a-zA-Z]/}, length: {minimum: 5}
end


