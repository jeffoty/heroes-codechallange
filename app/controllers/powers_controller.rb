class PowersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_method
     
    def index
        powers = Power.all
        render json: powers
    end

    def show
        power = find_powers
        render json: power
    end

    def update
        power = find_powers
        power.update!(power_params)
        render json: power
    end

    private

    def record_not_found_method
        render json: {error: "Power not found"}, status: :not_found
    end

    def power_params
        params.permit(:name, :description)
    end

    def find_powers
        Power.find_by!(id: params[:id])
    end
end
