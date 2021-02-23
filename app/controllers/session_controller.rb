# frozen_string_literal: true

class SessionController < ApplicationController
  skip_before_action :require_login, only: %i[login create]

  def login; end

  def create
    user = User.find_by(username: params[:login])

    if user&.authenticate(params[:password])
      sign_in user
      redirect_to game_input_url
    else
      flash.now[:danger] = t(:wrong_login_or_password)
      redirect_to session_login_url
    end
  end

  def logout
    sign_out
    redirect_to session_login_url
  end
end
