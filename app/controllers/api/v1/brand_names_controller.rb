class Api::V1::BrandNamesController < ApplicationController
    def index
        brandnames = BrandName.all
        render json: brandnames
    end 

    def create
        brandname = BrandName.create(brandnames_params)
        render json: brandnames
    end

    def destroy
        brandname = BrandName.find(params[:id])
        brandname.destroy!
        render json: {}
    end

    def show
        brandname = BrandName.find(params[:id])
        render json: brandnames
    end

    def update
        brandname = BrandName.find(params[:id])
        brandname.update(brandnames_params)
        render json: brandnames
    end

    def brandnames_params
        params.require(:brandnames).permit!
    end
end
