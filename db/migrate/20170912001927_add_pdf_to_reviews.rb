class AddPdfToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :pdf, :string
  end
end
