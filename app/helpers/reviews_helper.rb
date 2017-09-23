module ReviewsHelper
  def card_image_url(review)
    review.images.empty? ? review.company.logo_url : review.images[0].url
  end
end
