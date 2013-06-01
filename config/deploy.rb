require 'bundler/capistrano'
load 'deploy/assets'

set :application, "melody"
set :deploy_to, "/var/rails/melody"
set :user, "rails"
set :use_sudo, false

set :local_repository, "mysitegit:melody.git"
set :repository, "/var/git/melody.git"
set :branch, "master"
set :scm, :git
set :deploy_via, :remote_cache

set :normalize_asset_timestamps, false
set :keep_releases, 3

role :web, "mysitedeploy"
role :app, "mysitedeploy"
role :db,  "mysitedeploy", :primary => true

after "deploy:update", :roles => :app do
  run "cp #{shared_path}/config/database.yml #{release_path}/config/"
end

after "deploy:update", "deploy:cleanup"

namespace :deploy do
  desc "Restarts your application."
  task :restart, :roles => :app do
    run "touch #{current_path}/tmp/restart.txt"
  end
  desc "Load the seed data from db/seeds.rb"
  task :seed do
    run "cd #{current_path}; rake db:seed RAILS_ENV=#{rails_env}"
  end
  desc "Reset the sql data"
  task :migratereset do
    run "cd #{current_path}; rake db:migrate:reset RAILS_ENV=#{rails_env}"
  end
end