class Pdf2ImagesJob < ApplicationJob
  queue_as :default

  def perform(review)
    pdf_path = review.pdf.path
    img_basename = File.basename(pdf_path, ".pdf")

    Dir.mktmpdir do |dir|
      `pdftocairo -jpeg -r 50 #{pdf_path} #{dir}/#{img_basename}`
      images = Dir.glob("#{dir}/*.jpg")

      review = Review.find(review.id)
      review.images = images.map { |image| Pathname.new(image).open }
      review.save!
    end
  end
end
