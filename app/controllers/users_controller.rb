class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    # @products = @user.products

    @cart = user_product_counts(@user)


    respond_to do |format|
      format.html
      format.json { render json: @cart }
    end
  end


end
