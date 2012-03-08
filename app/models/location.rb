class Location < ActiveRecord::Base
  validates :description_left, :description_right, :presence => true
end
