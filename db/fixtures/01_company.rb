companies_name = %w[
  CyderAgent
  FeNA
  KINE
  yahho!
  Pineapple
  gogle
  hardbank
  Bteam
]
tags = %w[
  海外支社がある
  大手
  スタートアップ
  中堅
  メガベンチャー
  BtoC
  BtoB
  CtoC
  社長が元エンジニア
  カンファレンスのスポンサーしてた
]

companies_name.each.with_index(1) do |company_name, idx|
  Company.seed do |c|
    c.id = idx
    c.name = company_name
    c.url = rand(2).odd? ? "http://hogehoge.com" : nil
    c.address = rand(2).odd? ? "茨城県つくば市天王台１丁目１−１" : nil
    c.logo = rand(2).odd? ? "hogehoge.png" : nil
    c.tag_list = tags.sample(rand(5)).join(",")
  end
end
