class HeroPowersController < ApplicationController
    
    def create
        hero = Hero.find(params[:hero_id])
        heropower = HeroPower.create!(heropower_params)
        render json: hero, serializer: SinglePowerSerializer
    end

    private

    def heropower_params
        params.permit(:strength, :power_id, :hero_id)
    end
end
