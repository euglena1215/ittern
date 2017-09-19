# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  content    :text             not null
#  user_id    :integer
#  url        :string
#  company_id :integer
#  rate       :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  pdf        :string
#  images     :string           default([]), is an Array
#
# Indexes
#
#  index_reviews_on_company_id  (company_id)
#  index_reviews_on_user_id     (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#  fk_rails_...  (user_id => users.id)
#

class Review < ApplicationRecord
  acts_as_taggable

  mount_uploader :pdf, ReviewPdfUploader

  has_many :comments
  has_one :benefit

  belongs_to :user
  belongs_to :company

  validates :content, presence: true

  validates :url,
            allow_blank: true,
            format: /\A#{URI.regexp(%w[http https])}\z/

  validates :rate,
            numericality: {
              only_integer: true,
              greater_than_or_equal_to: 1,
              less_than_or_equal_to: 5,
            }
end
