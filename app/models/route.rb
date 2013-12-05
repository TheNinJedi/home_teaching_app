class Route < ActiveRecord::Base
  belongs_to :district
  has_many :families
  has_many :members, as: :multiassignable

  # attr_accessible :title, :body
end
