class LocationsController < ApplicationController
  # GET /locations
  # GET /locations.json
  def index
    @location = Location.first

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @locations }
    end
  end
end
