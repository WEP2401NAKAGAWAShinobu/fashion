class SessionsController < ApplicationController
  skip_before_action :login_required, only: [:new, :create, :guest_login, :admin_new, :admin_create, :admin_guest_login]
  
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user&.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to cloths_path
    else
      flash.now[:alert] = '無効なメールアドレスまたはパスワードです'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to login_path
  end

  def guest_login
    user = User.find_or_create_by!(email: 'guest@example.com') do |user|
      user.name = 'ゲストユーザー'
      user.password = SecureRandom.urlsafe_base64
      user.password_confirmation = user.password
    end
    log_in(user)
    redirect_to cloths_path
  end

  def guest_logout
    log_out if logged_in?
    redirect_to root_path
  end

  private

  def log_in(user)
    session[:user_id] = user.id
  end

  def logged_in?
    !session[:user_id].nil?
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end


