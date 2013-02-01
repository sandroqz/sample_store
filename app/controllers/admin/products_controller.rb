require "#{Rails.root}/lib/sample_responder.rb"

class Admin::ProductsController < ApplicationController

  before_filter :find_product, only: :destroy
  before_filter only: [:new, :create] { @product = Product.new params[:product] }
  respond_to :html, :js
  self.responder = SampleResponder

  def index
    @products = Product.all
    respond_with :admin, @products
  end

  def create
    @product.save
    respond_with :admin, @product
  end

  def destroy
    @product.destroy
    respond_with :admin, @product
  end

  private
  def find_product
    @product = Product.find params[:id]
  end
end
