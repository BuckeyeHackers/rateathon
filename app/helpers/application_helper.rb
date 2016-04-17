module ApplicationHelper
  def stars(rating)
    rating = rating.floor

    num_stars = (rating / 2).to_i
    star_string = "\uf005".encode('utf-8') * num_stars

    if rating.odd?
      star_string += "\uf089".encode('utf-8')
    end

    star_string
  end
end
