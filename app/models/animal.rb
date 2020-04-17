class Animal < ApplicationRecord
    has_many :adoptions, dependent: :delete_all
    has_many :users, through: :adoptions
    belongs_to :shelter, optional: true

    #returns array

    def adoption_validation
        if self.adoptions.length > 1
            # Adoption.errors[:status] << "Can only be Approved Once"
            errors.add(:status, "Can only be approved once")
        end
    end
    def self.not_adopted
        self.all.select{|a| a.adopted == false}
    end

    def self.adopted
        self.all.select{|a| a.adopted == true}
    end

    def self.after_12
        self.all.select{|a| a.id > 12}
    end

    def set_others_to_denied
        # if self.adopted == true
        # need to be able to save to database
            self.adoptions.map do |adoption| 
                if (adoption.status != "Approved")
                    adoption.status = "Denied"
                else
                    adoption.status
                end
            # end
        # end
    end
            # self.
            # animal.adoptions.map{|x| x.status}
            # another method to get adopted boolean
            # if status == approved && boolean == true
            # then animal is adopted
            # if boolean == true, deny all other applications

            # find out how to change all other elements in array once we have 1 approval
            # we need to find out how to change status to true and have all other statuses == false as a result

end
   
end
