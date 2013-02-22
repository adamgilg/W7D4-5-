class User < ActiveRecord::Base
  attr_accessible :email, :session_token
  has_many :user_products
  has_many :products, through: :user_products

  accepts_nested_attributes_for :user_products

  def reset_token
    self.session_token = SecureRandom.urlsafe_base64
    self.save!
  end

  def delete_token
    self.session_token = nil
    self.save!
  end

end
