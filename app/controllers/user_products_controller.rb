class UserProductsController < ApplicationController

  def create
    @user = User.find_by_session_token(session[:session_token])
    user_products = @user.user_products.build({product_id: params[:id]})

    if user_products.save
      redirect_to products_path
    else
      flash[:alert] = "can't add that item, yo"
      redirect_to products_path
    end
  end

  def destroy
    user_product = UserProduct.find(params[:id])
    user_product.destroy!
  end
end
