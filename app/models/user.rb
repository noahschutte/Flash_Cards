class User < ActiveRecord::Base
  has_secure_password

  validates_presence_of :name, :email, :password_digest
  validates_uniqueness_of :email

  has_many :games
  has_many :decks, through: :games
  has_many :guesses, through: :games
end
