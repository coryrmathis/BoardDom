class User < ActiveRecord::Base
  has_and_belongs_to_many :games
  has_many :comments, foreign_key: :author_id

  validates :username, presence: true, uniqueness: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
