
require './main'
require 'erb'
dbconfig = YAML.load(ERB.new(File.read('config/database.yml')).result)

run Sinatra::Application