source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem "rails", "~> 5.1.3"
# Use sqlite3 as the database for Active Record
gem "pg"
# Use Puma as the app server
gem "puma", "~> 3.7"
# Use SCSS for stylesheets
gem "sass-rails", "~> 5.0"
# Use Uglifier as compressor for JavaScript assets
gem "uglifier", ">= 1.3.0"
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem "coffee-rails", "~> 4.2"
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem "turbolinks", "~> 5"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.5"
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem "capybara", "~> 2.13"
  gem "factory_girl_rails"
  gem "rspec-rails"
  gem "selenium-webdriver"
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "web-console", ">= 3.3.0"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"

  # エラー画面をわかりやすく整形してくれる
  gem "better_errors"
  # better_errorsの画面上にirb/pry(PERL)を表示する
  gem "binding_of_caller"

  # 環境変数をいい感じに設定できる
  gem "dotenv-rails"

  # schemaをmodelにコメントとして記述
  gem "annotate"
  # 静的チェック
  gem "onkcop", require: false
  # N+1問題
  gem "bullet"

  # ER図を自動生成
  gem "rails-erd"

  # localで送信されたメールを確認できる
  gem "letter_opener"
  gem "letter_opener_web"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# 初期データを入れる
gem "seed-fu"

# inum
gem "inum"

# 画像アップロード
gem "carrierwave"
gem "rmagick", require: "RMagick"

# ログイン周り
gem "devise"

# タグ機能
gem "acts-as-taggable-on"

# 検索機能
gem "ransack"

# Active Job
gem 'sidekiq'
