source "https://rubygems.org"

ruby "2.2.2"

gem "acts_as_list"
gem "airbrake"
gem "autoprefixer-rails"
gem "bootstrap-sass", "~> 3.3.5"
gem "cancancan", "~> 1.10"
gem "coffee-rails", "~> 4.1.0"
gem "delayed_job_active_record"
gem "devise"
gem "email_validator"
gem "flutie"
gem "font-awesome-rails"
gem "friendly_id", "~> 5.1"
gem "haml-rails", "~> 0.9"
gem "high_voltage"
gem "i18n-tasks"
gem "jquery-rails"
gem "newrelic_rpm", ">= 3.9.8"
gem "normalize-rails", "~> 3.0.0"
gem "pg"
gem "rack-canonical-host"
gem "rails", "4.2.1"
gem "recipient_interceptor"
gem "sass-rails", "~> 5.0"
gem "simple_form"
gem "title"
gem "uglifier"
gem "unicorn"

group :development do
  gem "spring"
  gem "spring-commands-rspec"
  gem "web-console"
end

group :development, :test do
  gem "awesome_print"
  gem "bundler-audit", require: false
  gem "byebug"
  gem "dotenv-rails"
  gem "factory_girl_rails"
  gem "pry-rails"
  gem "rspec-rails", "~> 3.1.0"
end

group :test do
  gem "capybara-webkit", ">= 1.2.0"
  gem "database_cleaner"
  gem "formulaic"
  gem "launchy"
  gem "shoulda-matchers", require: false
  gem "simplecov", require: false
  gem "timecop"
  gem "webmock"
end

group :staging, :production do
  gem "rails_stdout_logging"
  gem "rack-timeout"
end
