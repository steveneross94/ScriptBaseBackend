class Api::V1::TermsController < ApplicationController
    def index
        terms = Term.all
        render json: terms
    end 

    def create
        term = Term.create(terms_params)
        render json: terms
    end

    private 

    def terms_params
        params.require(:terms).permit!
    end
end