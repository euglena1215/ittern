class Pdf2ImagesJob < ApplicationJob
  queue_as :default

  def perform(review)
    pdf_path = review.pdf.path
    img_basename = File.basename(pdf_path, '.pdf')

    Dir.mktmpdir do |dir|
      Rails.logger.debug(' ===== log start =======')
      Rails.logger.debug("#{__FILE__}:#{__LINE__ }")
      Rails.logger.debug(" pdf_path: #{pdf_path}")
      Rails.logger.debug(' ===== log end =======')
      `pdftocairo -jpeg -r 50 #{pdf_path} #{dir}/#{img_basename}`
      images = Dir.glob("#{dir}/*.jpg")
      Rails.logger.debug(' ===== log start =======')
      Rails.logger.debug("#{__FILE__}:#{__LINE__ }")
      Rails.logger.debug(images)
      Rails.logger.debug(' ===== log end =======')

      review = Review.find(review.id)
      # imagesにsetしようとすると
      # TypeError: no implicit conversion of nil into String
      # と怒られます。。。
      review.images = images.map { |image| Pathname.new(image).open }
      review.save!
    end
  end
end
