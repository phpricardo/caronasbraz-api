source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.4'

gem 'rails', '~> 6.0.0'
gem 'pg', '>= 0.18', '< 2.0'
gem 'devise'
gem 'devise_token_auth'
gem 'bootsnap', '>= 1.4.2', require: false

gem "rack", ">= 2.0.8"
gem 'rack-cors'

gem "puma", ">= 3.12.2"
gem 'foreman'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'faker', '~> 2.10'
  gem 'pry'
  gem 'pry-rails'
  gem 'solargraph'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
