class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] == nil
      redirect_to controller: 'sessions', action: 'new'
    elsif params[:name] == ""
      redirect_to controller: 'sessions', action: 'new'
    else
      params[:name] != nil
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/logout'
  end

end
