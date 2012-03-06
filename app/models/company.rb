class Company < ActiveRecord::Base
  validates :description, :description_home, :presence => true
end
