class Member < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :multiassignable, polymorphic: true
end
