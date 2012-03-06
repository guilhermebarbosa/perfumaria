class Service < ActiveRecord::Base
  validates :description, :presence => true
end