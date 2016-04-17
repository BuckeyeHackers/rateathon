class Event < ActiveRecord::Base
  belongs_to :organization
  has_many :reviews, dependent: :destroy

  def rating
    reviews = self.reviews.to_a
    reviews.sum(&:rating) / reviews.count
  end
end
