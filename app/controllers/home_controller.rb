class HomeController < ApplicationController
  def index
    @company = Company.first
    @home = Home.first
    
    respond_to do |format|
      format.html # index.html.erb
    end
  end
end