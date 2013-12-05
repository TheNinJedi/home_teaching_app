class District < ActiveRecord::Base
  belongs_to :organizaion
  has_many :routes
  # attr_accessible :title, :body
end
