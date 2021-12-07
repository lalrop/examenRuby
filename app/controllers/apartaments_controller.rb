class ApartamentsController < ApplicationController
    def index
        @apartaments = Apartament.all
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
    

    private
        def apartament_params
            params.require(:apartament).permit(:number,:building_id)            
        end
        
end
