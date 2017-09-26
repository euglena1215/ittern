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
#
# Indexes
#
#  index_reviews_on_company_id  (company_id)
#  index_reviews_on_user_id     (user_id)
#

class Review < ApplicationRecord
  acts_as_taggable

  has_many :comments
  has_one :benefit

  belongs_to :user
  belongs_to :company

  accepts_nested_attributes_for :benefit

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
