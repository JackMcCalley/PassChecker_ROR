class PasswordController < ApplicationController
  def PasswordChecker
    cookies[:username] = params[:username]
    cookies[:password] = params[:password]
    render "passwordchecker.html.erb"
  end

  def SignUp
    render "signup.html.erb"
  end

  def Success
    @username = params[:username_input]
    @password = params[:password_input]
    if @username == cookies[:username] && @password == cookies[:password]
      render "success.html.erb"
    else cookies[:password] != @password || cookies[:username] != @username
      render "passwordchecker.html.erb"
    end
  end
end
