class HeroPowersController < ApplicationController
    
    def create
        heropower = HeroPower.create!(heropower_params)
        render json: heropower
    end

    private

    def heropower_params
        params.permit(:strength, :power_id, :hero_id)
    end
end
