class ShoppingCartsController < ApplicationController
  def update
    @shopping_cart = session[:shopping_cart] || []
    prod = Product.find(params[:product_id])
    @shopping_cart << prod
    session[:shopping_cart] = @shopping_cart
    redirect_to prod
  end
end
