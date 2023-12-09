require "capistrano/setup"
require 'capistrano/rbenv'
require "capistrano/deploy"
require 'capistrano/rails'
require "capistrano/bundler"
require "capistrano/rails/assets"
require "capistrano/rails/migrations"

require "capistrano/scm/git"
install_plugin Capistrano::SCM::Git

require 'capistrano/puma'
install_plugin Capistrano::Puma

Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
