module ApplicationHelper
  def require_login
    unless logged_in?
      redirect_to new_session_path
    end
  end

  def logged_in?
    !!current_user
  end

  def current_user
    unless session[:session_token].nil?
      @current_user = User.find_by_session_token(session[:session_token])
    else
      nil
    end
  end

  def user_product_counts(user)
    product_counts = {}
    cart = []
    user.products.each do |product|
      if product_counts[product] == nil
        product_counts[product] = 1
      else
        product_counts[product] += 1
      end
    end
    product_counts.each do |key, val|
      cart << { :product => key, :count => val}
    end
    cart.to_json
  end

end
