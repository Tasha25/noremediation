require 'bundler/setup'
require 'rubygems'
require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/flash'
require 'sinatra/reloader' if development?
require './config/environments'
require 'pathname'
require 'uri'
require 'open-uri'
require 'carrierwave'
require 'carrierwave/orm/activerecord'
require 'rmagick'
require 'mini_magick'
require 'bcrypt'


require './routes/init'
require  './helpers/init'
require  './models/init'

  get '/' do
    erb :"index.html" , :layout => false
  end

  get '/about-us' do
    erb :"about_us.html" , :layout => false
  end

    get '/services' do
    erb :"services.html", :layout => false #need help changing this into layout.erb but the roll over menu is not working.
  end

    get '/trial' do
    erb :"trail.html" , :layout => false
  end
  get '/contacts' do
    erb :"contacts.html" , :layout => false
  end

   get '/sign-up' do
    erb :"sign_up.html" , :layout => false
  end