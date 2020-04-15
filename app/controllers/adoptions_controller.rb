class AdoptionsController < ApplicationController

    def new
        @adoption = Adoption.new
        @animal = Animal.find(params[:animal_id])
    end

    def create
       
        # @adoption = Adoption.create(animal_id: params[:animal_id], user_id: params[:user_id], reason: params[:reason])
     
        @adoption = Adoption.create(user_id: params[:adoption][:user_id], animal_id: params[:animal_id], reason: params[:adoption][:reason])
        # byebug
        @animal = Animal.find(params[:animal_id])
        redirect_to animal_adoption_path(@animal, @adoption)
    end

    def show
        @adoption = Adoption.find(params[:id])
    end
    
    private

    def adoption_params
        params.require(:adoption).permit(:animal_id, :user_id, :reason)
    end
    # t.integer "animal_id"
    # t.integer "user_id"
    # t.string "status", default: "Pending"
    # t.text "reason", default: "Because I love them"
    # t.datetime "created_at", precision: 6, null: false
    # t.datetime "updated_at", precision: 6, null: false
    
end
