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

class Benefit < ApplicationRecord
  belongs_to :review

  validates :wage,
            numericality: {
              only_integer: true,
              greater_than_or_equal_to: 0,
            }
end
