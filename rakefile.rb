require './main'
 require 'sinatra/activerecord/rake'
require 'bundler/setup'
require 'active_record'

include ActiveRecord::Tasks

db_dir = File.expand_path('../db', __FILE__)
config_dir = File.expand_path('../config', __FILE__)

DatabaseTasks.env = ENV['ENV'] || :development
DatabaseTasks.db_dir = db_dir
DatabaseTasks.database_configuration = YAML.load(File.read(File.join(config_dir, 'database.yml')))
DatabaseTasks.migrations_paths = File.join(db_dir, 'migrate')

task :environment do
  ActiveRecord::Base.configurations = DatabaseTasks.database_configuration
  ActiveRecord::Base.establish_connection DatabaseTasks.env
end

load 'active_record/railties/databases.rake'

#this needs to be in the rakefile.rb instead of the other things because you will get an "uninitialized constant ActiveRecord::Tasks::DatabaseTasks::Rails