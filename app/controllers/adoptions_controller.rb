class AdoptionsController < ApplicationController

    def new
        @adoption = Adoption.new
        @animal = Animal.find(params[:animal_id])
    end

    def create
       
        @adoption = Adoption.new(user_id: params[:adoption][:user_id], animal_id: params[:animal_id], reason: params[:adoption][:reason])
        @animal = Animal.find(params[:animal_id])

        if @adoption.valid?
            @adoption.save 
            redirect_to animal_adoption_path(@animal, @adoption)
        else
            render :new
       end
    end

    def show
        @adoption = Adoption.find(params[:id])
    end
    
    def edit
        @adoption = Adoption.find(params[:id])
    end
  
    def update
        @adoption.update(user_id: params[:adoption][:user_id], animal_id: params[:animal_id], reason: params[:adoption][:reason])
        @animal = Animal.find(params[:animal_id])
        redirect_to animal_adoption_path(@animal, @adoption)
    end

    def destroy
        @adoption = Adoption.find(params[:id])
        @adoption.destroy 
        redirect_to shelters_path
    end

    # t.integer "animal_id"
    # t.integer "user_id"
    # t.string "status", default: "Pending"
    # t.text "reason", default: "Because I love them"
    # t.datetime "created_at", precision: 6, null: false
    # t.datetime "updated_at", precision: 6, null: false
    
end
