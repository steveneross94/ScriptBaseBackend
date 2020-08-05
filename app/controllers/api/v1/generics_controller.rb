class Api::V1::GenericsController < ApplicationController
    def index
        generics = Generic.all
        render json: generics, include: :brand_name
    end 

    def create
        generic = Generic.create!(generics_params)
        render json: generics
    end

    def destroy
        generic = Generic.find(params[:id])
        generic.destroy!
        render json: {}
    end

    def show
        generic = Generic.find(params[:id])
        render json: generics, include: :brand_name
    end

    def update
        generic = Generic.find(params[:id])
        generic.update(generics_params)
        render json: generics
    end

    def generics_params
        params.require(:generics).permit!
    end
end
