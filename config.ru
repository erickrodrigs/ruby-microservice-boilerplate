require './config/environment'

Mongoid.load!('config/mongoid.yml', ENV['SINATRA_ENV'])

run ApplicationController
