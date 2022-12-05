class HerosController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_method
    
    def index
        heros = Hero.all
        render json: heros
    end

    def show
        hero = Hero.find_by!(id: params[:id])
        render json: hero, serializer: SinglePowerSerializer
    end

    private
    def record_not_found_method
        render json: {error: "Hero not found"}, status: :not_found
    end
end
