class Driver::RidesController < ApplicationController
    before_action :authenticate_user!
    
    def new
        @ride = Ride.new
    end
    
    def create
    end
    
    def edit
    end
    
    def show
    end
    
    def index
    end
    
    private
    
    def ride_params
    end
end
