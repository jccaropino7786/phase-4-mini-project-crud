class SpicesController < ApplicationController
    
    def index
        spices = Spice.all
        render json: spices, status: 200
    end

    def create
        spice = Spice.create(spice_params)
        render json: spice, status: 201
    end

    def update
        spice = Spice.find(params[:id])
        spice.update(spice_params)
        render json: spice, status: 202
    end

    def destroy
        spice = Spice.find(params[:id])
        spice.destroy
       
    end

    private

    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end

end
