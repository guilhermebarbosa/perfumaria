class CompaniesController < ApplicationController
  # GET /companies
  # GET /companies.json
  def index
    @company = Company.first

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @companies }
    end
  end
end
