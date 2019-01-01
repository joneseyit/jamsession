class User < ApplicationRecord
  has_many :user_sessions
  has_many :sessions, through: :user_sessions
end
