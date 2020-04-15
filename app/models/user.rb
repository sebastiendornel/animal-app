class User < ApplicationRecord
    has_many :adoptions
    has_many :animals, through: :adoptions

    validates :name, presence: true, format: {with: /[a-zA-Z]/}
    validates :age, presence: true, numericality: true
    validates :address, presence: true, format: {with: /[a-zA-Z]/}
    validates :bio, presence: true, format: {with: /[a-zA-Z]/}, length: {minimum: 5}

    def self.average_user_age
        a = self.all.pluck(:age)
        a.sum.to_f / a.length.to_f
    end

    def self.user_count
        self.all.count
    end

    def self.average_pet_count_of_users
        self.all.pluck(:pet_qty).sum.to_f / self.all.pluck(:pet_qty).length.to_f
    end

    def self.youngest
        self.all.pluck(:age).min
    end

    def self.oldest
        self.all.pluck(:age).max
    end

    def self.most_pets
        # name = self.all.max_by{|u| u.pet_qty}.name
        pet_count = self.all.max_by{|u| u.pet_qty}.pet_qty
        people = self.all.select{|x| x.pet_qty == pet_count}
        name = people.map{|x| x.name}.join(" ")
        if people.length == 1
            return "The person with the most pet(s) is #{name} with #{pet_count} pets."
        else
            return "The people with the most pet(s) are #{name} with #{pet_count} pets."
        end
    end

end


