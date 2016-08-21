require 'capistrano/setup'
require 'capistrano/deploy'
require 'capistrano/bundler'
require 'capistrano/rails'
require 'capistrano/rbenv'
set :rbenv_type, :user
set :rbenv_ruby, '2.3.1'
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
