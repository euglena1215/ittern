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
# Foreign Keys
#
#  fk_rails_...  (review_id => reviews.id)
#  fk_rails_...  (user_id => users.id)
#

require "rails_helper"

RSpec.describe Comment, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
