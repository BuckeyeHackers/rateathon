class Review < ActiveRecord::Base
  belongs_to :event
  belongs_to :user
  has_many :votings, dependent: :destroy

  def rating
    rating_fields = [:swag, :food, :environment, :prizes, :resources ]
    sum = rating_fields.reduce(0) { |acc, x| acc += self.send(x) }
    sum.to_f / rating_fields.length
  end
end
