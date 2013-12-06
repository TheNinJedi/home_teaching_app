class Route < ActiveRecord::Base
  belongs_to :district
  has_many :families

  # attr_accessible :title, :body
end
