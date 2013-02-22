class Product < ActiveRecord::Base
  attr_accessible :name, :price
  has_many :user_products

  def show
    @product = Product.find(params[:id])
  end
end
