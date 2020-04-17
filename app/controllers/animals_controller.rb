class AnimalsController < ApplicationController

    def index
        @animals = Animal.all
    end

    def show
        @animal = Animal.find(params[:id])
    end

    def edit
        @animal = Animal.find(params[:id])
    end

    def update
        @animal = Animal.find(params[:id])
        @animal.update(animal_params)
        redirect_to animal_path(@animal)
    end
    
    def new
        @animal = Animal.new
    end

    def create
        @animal = Animal.create(animal_params)
        redirect_to animal_path(@animal)
        # redirect_to animals_path
    end

    def destroy
        @animal = Animal.find(params[:id])
        @animal.destroy
        redirect_to animals_path
    end

    
    private

    def animal_params
        params.require(:animal).permit(:name, :breed, :bio, :age, :shelter_id, :adopted)
    end

end
