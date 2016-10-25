class SessionsController < ApplicationController

  def create
    if params[:name] == nil || ""
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to show_path
    end
  end

  def destroy
    session[:name] = nil
    redirect_to login_path
  end

end
