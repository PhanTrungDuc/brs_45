class User < ApplicationRecord
<<<<<<< HEAD
=======
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
>>>>>>> login-sigup
  devise :database_authenticatable, :registerable,
    :rememberable, :trackable, :validatable
  has_many :likes, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :comments, through: :review
  has_many :marks, dependent: :destroy
  has_many :ratings
  has_many :requests, dependent: :destroy
  has_many :active_relationships, class_name: Relationship.name,
    foreign_key: "follower_id", dependent: :destroy
  has_many :passive_relationships, class_name: Relationship.name,
    foreign_key: "followed_id", dependent: :destroy
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower
end
