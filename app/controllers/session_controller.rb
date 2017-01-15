class SessionController < ApplicationController
  def new
  end

  def create
  	if usuario = Usuarios.find_by(params[:email], params[:password])
  		session[:current_user_id] = usuario.id
  		redirect_to root_url
  	else
  		render 'new'
  	end
  end

  def destroy
  	@current_user = session[current_user_id] = nil
  	redirect_to root_url
  end
end
