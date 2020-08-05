class Api::V1::PrescriptionsController < ApplicationController
    def index
        prescriptions = Prescription.all
        render json: prescription
    end 

    def create
        prescription = Prescription.create(prescription_params)
        render json: prescription
    end

    def destroy
        prescription = Prescription.find(params[:id])
        prescription.destroy!
        render json: {}
    end

    def show
        prescription = Prescription.find(params[:id])
        render json: prescription
    end

    def update
        prescription = Prescription.find(params[:id])
        prescription.update(prescription_params)
        render json: prescription
    end

    def prescription_params
        params.require(:prescription).permit!
    end
end
