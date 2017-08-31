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

FactoryGirl.define do
  factory :benefit do
    review nil
    transportation false
    accommodation false
    wage 1
    lunch false
  end
end
