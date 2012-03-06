class GalleriesController < ApplicationController
  # GET /galleries
  # GET /galleries.json
  def index
    @gallery = Gallery.first

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @galleries }
    end
  end
end
