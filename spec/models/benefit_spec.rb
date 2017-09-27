# == Schema Information
#
# Table name: benefits
#
#  id             :integer          not null, primary key
#  review_id      :integer
#  transportation :boolean          default(FALSE), not null
#  accommodation  :boolean          default(FALSE), not null
#  wage           :integer          default(0), not null
#  lunch          :boolean          default(FALSE), not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_benefits_on_review_id  (review_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (review_id => reviews.id)
#

require "rails_helper"

RSpec.describe Benefit, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
