class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :load_operation
  
  def load_operation
    @operation = Home.find(:first)
  end
  
end
