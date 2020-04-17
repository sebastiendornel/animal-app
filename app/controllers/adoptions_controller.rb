class AdoptionsController < ApplicationController
    helper_method :approve

    def index
        @adoptions = Adoption.all
        @sorted_status = @adoptions.order(:status)
        
        @sorted_dogs = @adoptions.order(:animal_id)
        # @categories = Category.order(:name)
    end
    
    def show
        @adoption = Adoption.find(params[:id])
    end

    def create
        # byebug
        @adoption = Adoption.new(user_id: params[:adoption][:user_id], animal_id: params[:animal_id], reason: params[:adoption][:reason])
        @animal = Animal.find(params[:animal_id])
        
        if @adoption.valid?
            @adoption.save 
            redirect_to animal_adoption_path(@animal, @adoption)
        else
            render :new
       end
    end
    
    def edit
        @adoption = Adoption.find(params[:id])
    end
  
    def update #use strong params here? / , status: params[:adoption][:status]
        @adoption = Adoption.find(params[:id])
        @adoptions = Adoption.all
        @sorted_status = @adoptions.order(:status)
        @sorted_dogs = @adoptions.order(:animal_id)
        @adoption.update(user_id: params[:adoption][:user_id], animal_id: params[:animal_id], reason: params[:adoption][:reason])
        @animal = Animal.find(params[:animal_id])
        if @adoption.valid?
            @adoption.save 
            redirect_to animal_adoption_path(@animal, @adoption)
        else
            # render :new
            render :index
       end
    end

    def new
        @adoption = Adoption.new
        @animal = Animal.find(params[:animal_id])
    end

    def destroy
        @adoption = Adoption.find(params[:id])
        @adoption.destroy 
        redirect_to adoptions_path
    end

    def approve
        @adoption = Adoption.find(params[:id])
        @adoption.status = params[:adoption][:status]
        @adoption.save

        if @adoption.status == "Approved"
            @animal = @adoption.animal
            @animal.adopted = true
            @animal.save
            @animal.set_others_to_denied
            # byebug
            @animal.adoptions.each{|adoption| adoption.save}
        # elsif @adoption.status == "Denied"

        end
        # change one status first, then update all other statuses after
        # animal.adoptions.map{|x| x.status}.length
        # if length is greater than 1
        #   set_others_to_denied
        # else
        #   run through below logic??
        # if @adoption.valid?
           
            # call deny method on animal instance
            # if approved, make adopted. if denied, make adopted
            # if @animal.adopted == false
            #     @animal.adopted = true
            # else    
            #     @animal.adopted = false
            # end
            # @animal.save
            redirect_to adoptions_path
        # else
        #     redirect_to animal_adoption_path(@animal, @adoption)
        # end
    end


    
end
