class Post < ApplicationRecord
  belongs_to :user
  acts_as_votable
  acts_as_taggable

  validates :image, presence: true
  validates :title, presence: true
  validates :location, presence: true
  validates :category, presence: true

end
