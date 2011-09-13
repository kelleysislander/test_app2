$LOAD_PATH.unshift File.join(File.dirname(__FILE__), 'deploy')

set :stages, %w(staging production)
set :default_stage, "staging"

require 'bundler/capistrano'
require 'capistrano/ext/multistage'

$:.unshift(File.expand_path('./lib', ENV['rvm_path']))
require "rvm/capistrano"
require 'bundler/capistrano'

$:.unshift(File.expand_path('./lib', ENV['rvm_path']))  # Add RVM's lib directory to the load path.
require "rvm/capistrano"                                # Load RVM's capistrano plugin.
set :rvm_ruby_string, '1.9.2-p290@test_app2'               # Or whatever env you want it to run in.
set :rvm_bin_path, "$HOME/.rvm/bin"
set :rvm_type, :user



