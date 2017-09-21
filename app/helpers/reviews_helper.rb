module ReviewsHelper
  # 交通費支給ありなしの表示
  def show_transportation(bool)
    if bool then
      "支給あり！"
    else
      "支給なし..."
    end
  end

  # 宿泊場所提供ありなしの表示
  def show_accommodation(bool)
    if bool then
      "提供される！"
    else
      "提供されない..."
    end
  end

  # ランチ出る出ないの表示
  def show_lunch(bool)
    if bool then
      "出る！"
    else
      "出ない..."
    end
  end
end
