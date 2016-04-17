class User < ActiveRecord::Base
  has_many :votings, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
