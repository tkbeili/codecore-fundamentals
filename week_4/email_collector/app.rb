require "sinatra"
require 'rubygems'
require 'data_mapper'
require "pony"

require './config/database'

enable :sessions
set :session_secret, '*&(^B23423452345'

get "/" do
  "Welcome to my awesome App!"
  @users = User.all
  erb :index
end

post "/save_email" do
  @user = User.create(
    :email      => params[:email],
    :created_at => Time.now
  )
  Pony.mail :to => "tammam.kbeili@gmail.com",
            :from => 'Emailer',
            :subject => 'You got a new signup: #{params[:email]}'
  redirect to("/")
end


get "/set_color" do
  session[:color] = params[:color]
  redirect to("/")
end