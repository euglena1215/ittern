Review.all.each do |review|
  Benefit.seed do |b|
    b.id = review.id
    b.review = review
    b.transportation = rand(2).odd?
    b.accommodation = rand(2).odd?
    b.wage = rand(20) * 1000
    b.lunch = rand(2).odd?
  end
end
