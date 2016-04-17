class Event < ActiveRecord::Base
  belongs_to :organization
  has_many :reviews, dependent: :destroy
end
