# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  name                   :string
#
# Indexes
#
#  index_users_on_confirmation_token    (confirmation_token) UNIQUE
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

require "rails_helper"

RSpec.describe User, type: :model do
  context "カスタムバリデーションメソッド" do
    describe "#email_cannot_be_except_academic_domain" do
      let(:user) { build(:user, :no_email) }
      subject do
        user.email = email
        user.email_cannot_be_except_academic_domain
        user.errors.empty?
      end

      describe "正常系" do
        context "hoge@example.ac.jp" do
          let(:email) { "hoge@example.ac.jp" }
          it { is_expected.to eq true }
        end
        context "hoge@example.example.ac.jp" do
          let(:email) { "hoge@example.example.ac.jp" }
          it { is_expected.to eq true }
        end
        context "hoge.hoge@example.ac.jp" do
          let(:email) { "hoge.hoge@example.ac.jp" }
          it { is_expected.to eq true }
        end
      end

      context "異常系" do
        context "@example.ac.jp" do
          let(:email) { "@example.ac.jp" }
          it { is_expected.to eq false }
        end
        context "hoge@ac.jp" do
          let(:email) { "hoge@ac.jp" }
          it { is_expected.to eq false }
        end
        context "hoge@example.ac-jp" do
          let(:email) { "hoge@example.ac-jp" }
          it { is_expected.to eq false }
        end
        context "hoge@example-ac.jp" do
          let(:email) { "hoge@example-ac.jp" }
          it { is_expected.to eq false }
        end
        context "hoge@example.com" do
          let(:email) { "hoge@example.com" }
          it { is_expected.to eq false }
        end
        context "hoge+_|^.,/;*[-=:;]!?#$%&(){}<>`'@example.ac.jp" do
          let(:email) { "hoge+_|^.,/;*[-=:;]!?#$%&(){}<>`'@example.ac.jp" }
          it { is_expected.to eq false }
        end
      end
    end
  end
end
