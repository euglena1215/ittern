(1..10).each do |i|
  User.seed do |u|
    u.id = i
    u.name = "ユーザー#{i}"
    u.email = "user#{i}@example.ac.jp"
    u.password = "password"
    u.password_confirmation = "password"

    # comfirmをスキップする
    u.confirmed_at = Time.zone.now
  end
end
