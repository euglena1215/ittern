class AddImagesToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :images, :string, array: true, default: []
  end
end
