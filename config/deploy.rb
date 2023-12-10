set :application, 'skillful_square'
set :repo_url, 'git@github.com:TheZero0-ctrl/skillful_square.git'
set :deploy_to, '/home/deploy/skillful_square'
set :branch, 'main'
set :rbenv_type, :user
set :rbenv_ruby, '3.2.1'

append :linked_files, 'config/master.key'
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads'

set :initial, true
before 'deploy:migrate', 'database:create' if fetch(:initial)

# Only keep the last 5 releases to save disk space
set :keep_releases, 5
