module ApplicationHelper
  def current_user
    @current_user ||= User.find_by(id: session[:id])
  end

  def check_logged_in
    redirect_to '/users/new' unless logged_in?
  end

  def logged_in?
    current_user != nil
  end

  def check_owner(object)
    current_user == object
  end
end
