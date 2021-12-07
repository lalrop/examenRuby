class BuildingsController < ApplicationController
    def index
        @buildings = Building.all        
    end

    def new
        @building = Building.new
    end

    def create
        @building = Building.create(buildings_params)
        if @building.save
            redirect_to @building
        else
            render :new
        end     
    end

    def show
        @building = Building.find(params[:id])
    end
    
    
    private
        def buildings_params
            params.require(:building).permit(:name,:address,:city)
        end
        
    
end
