module SessionsHelper
  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end
  # Returns the current logged-in user (if any).
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil? # jest ! (not) czyli funkcja pyta czy current_user jest nil i wychodzi ze nie jest bo ktos jest to daje wynik false (jakby bylo nil to by bylo true) ale ze jest ! to jest true. 
  end
   # Logs out the current user.
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end