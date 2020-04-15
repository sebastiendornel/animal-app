class Animal < ApplicationRecord
    has_many :adoptions
    has_many :users, through: :adoptions
    belongs_to :shelter

    #returns array
    def self.not_adopted
        self.all.select{|a| a.adopted == false}
    end

    def self.adopted
        self.all.select{|a| a.adopted == true}
    end
end
