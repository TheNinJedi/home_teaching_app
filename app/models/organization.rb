class Organization < ActiveRecord::Base
  has_many :districts
  # attr_accessible :title, :body
end
