class District < ActiveRecord::Base
  belongs_to :organizaion
  has_many :routes
  has_many :vt_routes
  # attr_accessible :title, :body
end
