class Api::V1::AlternativesController < ApplicationController
    def index
        alternatives = Alternative.all
        render json: alternatives, include: :brand_name
    end 

    def create
        alternatives = Alternative.create(alternatives_params)
        render json: alternatives
    end

    def destroy
        alternative = Alternative.find(params[:id])
        alternative.destroy!
        render json: {}
    end

    def show
        alternative = Alternative.find(params[:id])
        render json: alternatives, include: :brand_name
    end

    def update
        alternative = Alternative.find(params[:id])
        alternative.update(alternatives_params)
        render json: alternatives
    end

    def alternatives_params
        params.require(:alternatives).permit!
    end
end
