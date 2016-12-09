class Game < ActiveRecord::Base
  has_and_belongs_to_many :users, ->{ uniq }

  has_many :comments, as: :commentable
  has_many :votes, as: :votable
end
