class User < ActiveRecord::Base
  has_and_belongs_to_many :games, -> { uniq }
  validates :username, :presence => true, :uniqueness => true
  # validates :
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
