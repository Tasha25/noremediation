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