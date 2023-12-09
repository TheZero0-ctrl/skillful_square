lock '~> 3.18.0'

set :rbenv_type, :user
set :rbenv_ruby, '3.2.1'

set :application, 'skillful_square'
set :repo_url, 'git@github.com:TheZero0-ctrl/skillful_square.git'
set :deploy_to, '/home/deploy/apps/skillful_square'
set :branch, 'main'

set :puma_threads,    [4, 16]
set :puma_workers,    0

append :linked_files, 'config/master.key'
# set :linked_dirs, %w[log tmp/pids tmp/cache tmp/sockets vendor/bundle .bundle public/system public/uploads node_modules]

set :initial, true
before 'deploy:migrate', 'database:create' if fetch(:initial)

set :use_sudo, false
