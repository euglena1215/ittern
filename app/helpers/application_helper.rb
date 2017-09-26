module ApplicationHelper
  # そのナビゲーションが現在のものであれば"active"を返す
  def active_nav?(name)
    return "active" if name == controller_name
  end
end
