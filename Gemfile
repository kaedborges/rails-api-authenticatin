source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "rails", "~> 7.0.4"

gem "sqlite3", "~> 1.4"

gem "puma", "~> 5.0"

gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

gem "bootsnap", require: false

gem "rack-cors"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "faker"
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end


gem "devise", "~> 4.8"

gem "devise_token_auth", "~> 1.2"
