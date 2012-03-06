class Gallery < ActiveRecord::Base
  validates :description, :presence => true
end
