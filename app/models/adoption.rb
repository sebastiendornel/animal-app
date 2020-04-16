class Adoption < ApplicationRecord
    belongs_to :user
    belongs_to :animal
    
  

    validates :user, presence: true #uniqueness: {scope: :animal}
    # validates :adoption, uniqueness: {scope: :animal}
    # validates :status, uniqueness: (status == "Approved")
    validates :reason, presence: true, format: {with: /[a-zA-Z]/}, length: {minimum: 5}
    validates :animal, uniqueness: {scope: :user} #prevents user from adopting same animal twice


    # def check_group_name_uniqueness
    #   if User.where("group_name like ?", group_name + "%").count > 0
    #     errors.add(:group_name, "is already taken")
    #   end
    # end

    # def rating_validation
    #     if rating > 5 || rating < 1
    #         self.errors[:rating] << "Can only be between 1 and 5"
    #     end
    # end

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
    # when adoption is approved
    # if status for adoption == approved, find if other adoptions for same animal exist
    # if yes, then deny those applications
    
end
