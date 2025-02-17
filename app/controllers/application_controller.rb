class ApplicationController < ActionController::API
  include ActionController::Cookies


 private 

# Memoization
 def current_user 
  @current_user ||= User.find_by(id: session[:user_id])
 end

 def authenticate_user
  return render json: { error: "Not authorized" }, status: :unauthorized unless current_user
end

end
