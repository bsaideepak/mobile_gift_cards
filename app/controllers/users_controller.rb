class UsersController < ApplicationController
  def new_user
  end

  def create_user

    puts " "
    puts "***********************************************"
    puts " "
    puts params[:users][:username]
    puts params[:users][:password]
    puts params[:users][:phone]
    puts params[:users][:email]
    puts params[:users][:address]
    puts " "
    puts "***********************************************"
    puts " "
    session[:user_id] = params[:users][:username]
    cookies[:user_id] = session[:user_id]
    puts session[:user_id]
    user =  User.new(username: params[:users][:username], password: params[:users][:password], phone: params[:users][:phone], email: params[:users][:email], address: params[:users][:address])
    user.save
    redirect_to '/'
  end

end
