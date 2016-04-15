class User < ActiveRecord::Base
  has_many :games
  has_many :decks, through: :games
  has_many :guesses, through: :games
end
