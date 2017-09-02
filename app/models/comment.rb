# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  content    :text             not null
#  review_id  :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_comments_on_review_id  (review_id)
#  index_comments_on_user_id    (user_id)
#

class Comment < ApplicationRecord
  belongs_to :review
  belongs_to :user

  validates :content, presence: true
end
