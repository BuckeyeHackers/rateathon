class Organization < ActiveRecord::Base
  has_many :events, dependent: :destroy

  def rating
    events = self.events.order(:date).to_a
    num_events = events.count
    denominator = (2 ** num_events) - 1

    events.each_with_index.reduce(0) do |acc, x|
      numerator = (2 ** (num_events - x[1] - 1)).to_f
      acc + x[0].rating * (numerator / denominator)
    end
  end
end
