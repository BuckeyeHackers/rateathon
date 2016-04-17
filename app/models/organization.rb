class Organization < ActiveRecord::Base
  has_many :events, dependent: :destroy

  def rating
    events = self.events.order(:date).to_a
    denominator = (2 ** events.count) - 1

    sum = 0
    while events.any?
      numerator = (2 ** (events.count - 1)).to_f
      event = events.delete_at(0)
      sum += event.rating * (numerator / denominator)
    end
    sum
  end
end
