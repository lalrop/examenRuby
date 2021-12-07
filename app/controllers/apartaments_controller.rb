class ApartamentsController < ApplicationController
    def index
        @apartaments = Apartament.all
    end

    def indexBuilding
        @apartaments = Apartament.where(building_id:params[:building_id])
        @building = Building.find(params[:building_id])
    end
    
    def new
        @apartament = Apartament.new
        @buildings = Building.all
    end

    def create
        @buildings = Building.all
        @apartament = Apartament.new(apartament_params)
        if @apartament.save
            redirect_to apartaments_path
        else
            render :new
        end
    end

    def show
        @apartament = Apartament.find(params[:id])
    end
    
    

    private
        def apartament_params
            params.require(:apartament).permit(:number,:building_id)            
        end
        
end
