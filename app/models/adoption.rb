class Adoption < ApplicationRecord
    belongs_to :user
    belongs_to :animal

    validates :user_id, presence: true
    validates :reason, presence: true, format: {with: /[a-zA-Z]/}, length: {minimum: 5}
end

