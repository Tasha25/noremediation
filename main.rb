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
require 'mini_magick'
require 'bcrypt'


require './routes/init'
require  './helpers/init'
require  './models/init'

  get '/' do
    erb :"index.html"
  end

  get '/about-us' do
    erb :"about_us.html"
  end

    get '/services' do
    erb :"services.html"
  end

   get '/sign-up' do
    erb :"sign_up.html"
  end