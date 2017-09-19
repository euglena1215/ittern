class Pdf2ImagesJob < ApplicationJob
  queue_as :default

  def perform(review)
    # pdf_path = review.pdf.path
    # pdf_path_without_extension = File.join(File.dirname(pdf_path), File.basename(pdf_path, '.pdf'))


    # `pdftocairo -jpeg -r 50 #{pdf_path} #{pdf_path_without_extension}`

    # images = Dir.glob("some/local/path/*.jpg")
    # images.each do |image|
    #   id = File.basename(image).gsub('.jpg','')
    #   t = Product.where(id:id).first
    #   t.images = [Pathname.new(i).open]
    # end
  end
end
