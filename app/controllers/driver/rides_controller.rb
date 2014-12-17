class Driver::RidesController < ApplicationController
    before_action :authenticate_user!
    
    def new
        @ride = Ride.new
    end
    
    def create
        @ride = current_user.rides.create(ride_params)
        if @ride.valid?
            redirect_to driver_ride_path(@ride)
        else
            render :new, :status => :unprocessable_entity
        end
    end
    
    def edit
    end
    
    def show
        current_ride
    end
    
    def index
        @ride = current_user.rides
    end
    
    private
    
    helper_method :current_ride
    def current_ride
        @ride ||= Ride.find(params[:id])
    end
    
    def ride_params
        params.require(:ride).permit(:seats, :details, :details, 
        :departure_name, :departure_latitude, :departure_longitude, :departure_time,
        :arrival_name, :arrival_latitude, :arrival_longitude, :arrival_time,
        :waypoints_attributes => [:waypoint_name, :waypoint_latitude, :waypoint_longitude, :leg_cost, :leg_position, :waypoint_seats, :waypoint_time])
    end
end
