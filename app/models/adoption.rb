class Adoption < ApplicationRecord
    belongs_to :user
    belongs_to :animal

  

    validates :user, presence: true#, uniqueness: {scope: animal}
    validates :reason, presence: true, format: {with: /[a-zA-Z]/}, length: {minimum: 5}
    validates :animal, uniqueness: {scope: :user} #prevents user from adopting same animal twice

    def self.pending
        # byebug
        pending = self.where(status: "Pending").pluck(:user_id).uniq
        pending.map{|x| User.find(x)}.pluck(:name)
    end

    def self.denied
        denied = self.where(status: "Denied").pluck(:user_id).uniq
        denied.map{|x| User.find(x)}.pluck(:name)
    end

    def self.approved
        approved = self.where(status: "Approved").pluck(:user_id).uniq
        approved.map{|x| User.find(x)}.pluck(:name)
    end
    
    # def

    # end
end
