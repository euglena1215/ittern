class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.text :content, null: false
      t.references :user, foreign_key: true
      t.string :url
      t.references :company, foreign_key: true
      t.integer :rate, null: false

      t.timestamps
    end
  end
end
