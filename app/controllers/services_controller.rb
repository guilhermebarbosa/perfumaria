class ServicesController < ApplicationController
  # GET /services
  # GET /services.json
  def index
    @service = Service.first

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @services }
    end
  end
end
