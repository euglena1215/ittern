class Admin::BaseController < ApplicationController
  before_action :check_admin

  layout 'admin'

  def check_admin
    raise StandardError.new "管理者のみ閲覧できるページです" unless current_user.is_admin?
  end
end
