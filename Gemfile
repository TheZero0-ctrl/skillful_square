# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.1'
gem 'bootsnap', require: false
gem 'cssbundling-rails'
gem 'jbuilder'
gem 'jsbundling-rails'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.6'
gem 'redis', '~> 4.0'
gem 'sassc-rails'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'faker', '~> 1.6', '>= 1.6.6'
  gem 'pry'
  gem 'rspec-rails', '~> 6.0.0'
  gem 'rubocop', '~> 1.50', '>= 1.50.2', require: false
  gem 'rubocop-performance', '~> 1.17', '>= 1.17.1', require: false
  gem 'rubocop-rails', '~> 2.19', '>= 2.19.1', require: false
  gem 'rubocop-rspec', '~> 2.20', require: false
end

group :development do
  gem 'web-console'
end

group :test do
  gem 'shoulda-matchers', '~> 5.0'
end
