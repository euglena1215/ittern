ganre = %w[アニメ 小説 ゲーム お酒 ボドゲ 音楽 カフェ]
contents = %w[
  めっちゃ楽しい
  そこそこ楽しい
  まあそれなりに楽しい
  新たな気づきを得られた
  圧倒的成長ができた
  一人で開発してた方がましな
]
tags = %w[
  技術力が高い
  駅から近い
  メンターがそばにいる
  チーム開発できる
  PC支給
  お菓子食べ放題
  LT会がある
]

user_ids = User.pluck(:id)
company_ids = Company.pluck(:id)

(1..40).each do |i|
  Review.seed do |r|
    r.id = i
    r.content = "#{contents.sample}インターンでした！\n#{ganre.sample}好きには特にオススメ！"
    r.user = User.find(user_ids.sample)
    r.url = rand(2).odd? ? "http://hoge.com/intern" : nil
    r.company = Company.find(company_ids.sample)
    r.rate = (1..5).to_a.sample
    r.tag_list = tags.sample(rand(4)).join(",")
  end
end
