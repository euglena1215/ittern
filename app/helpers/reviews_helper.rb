module ReviewsHelper
  # ありなしでアイコンの色を変更
  def icon_color(bool)
    bool ? "pink" : "grey"
  end

  # 交通費支給ありなしの表示
  def show_transportation(bool)
    bool ? "支給あり" : "支給なし"
  end

  # 宿泊場所提供ありなしの表示
  def show_accommodation(bool)
    bool ? "提供される！" : "提供されない..."
  end

  # ランチ出る出ないの表示
  def show_lunch(bool)
    bool ? "出る！" : "出ない..."
  end
end
