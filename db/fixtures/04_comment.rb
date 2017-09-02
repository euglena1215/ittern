contents = %w[
  お疲れさま
  よさげ
  はい天才
  楽しそう
  ツンデレだなぁ
  wwwwwwwwwww
  つらそう
  どうしてそうなった
]

review_ids = Review.pluck(:id)
user_ids = User.pluck(:id)

(1..100).each do |i|
  Comment.seed do |c|
    c.id = i
    c.content = contents.sample
    c.review = Review.find(review_ids.sample)
    c.user = User.find(user_ids.sample)
  end
end
