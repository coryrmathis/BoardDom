class Vote < ActiveRecord::Base
  belongs_to :voter, class_name: "User"
  belongs_to :votable, polymorphic: true

  validates :voter, presence: true
  validates :votable, presence: true
  validates :up, presence: true
end
