for i in 1..10
  User.seed do |u|
    u.id = i
    u.name = "ユーザー#{i}"
    u.email = "user#{i}@example.ac.jp"
    u.password = "password"
    u.password_confirmation = "password"

    # comfirmをスキップする
    u.confirmed_at = Time.now
  end
end
