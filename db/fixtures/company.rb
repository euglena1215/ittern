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

companies_name.each.with_index(1) do |company_name, idx|
  Company.seed do |c|
    c.id = idx
    c.name = company_name
    c.url = rand(2).odd? ? "http://hogehoge.com" : nil
    c.address = rand(2).odd? ? "茨城県つくば市天王台１丁目１−１" : nil
    c.logo = rand(2).odd? ? "hogehoge.png" : nil
  end
end
