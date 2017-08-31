ganre = %w[アニメ 小説 ゲーム お酒 ボドゲ 音楽 カフェ]
contents = %w[
  めっちゃ楽しい
  そこそこ楽しい
  まあそれなりに楽しい
  新たな気づきを得られた
  圧倒的成長ができた
  一人で開発してた方がましな
]

(1..40).each do |i|
  Review.seed do |r|
    r.id = i
    r.content = "#{contents.sample}インターンでした！\n#{ganre.sample}好きには特にオススメ！"
    r.user = User.find(User.pluck(:id).sample)
    r.url = rand(2).odd? ? "http://hoge.com/intern" : nil
    r.company = Company.find(Company.pluck(:id).sample)
    r.rate = (1..5).to_a.sample
  end
end
