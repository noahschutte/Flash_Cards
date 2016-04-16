class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :name, :email
  validates_uniqueness_of :email
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create

  has_many :games
  has_many :decks, through: :games
  has_many :guesses, through: :games
end
