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

require "rails_helper"

RSpec.describe Review, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
