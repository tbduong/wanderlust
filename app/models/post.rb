class Post < ApplicationRecord
  belongs_to :user
  belongs_to :location
  acts_as_votable
end
