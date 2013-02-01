require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the ShoppingCartsHelper. For example:
#
# describe ShoppingCartsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end
describe ShoppingCartsHelper do
  describe "#shopping_cart_tag" do
    it "should display an empty shopping cart if no item was already added" do
      helper.shopping_cart_tag.should == %q{<div id="shopping_cart"><ul></ul></div>}
    end
    it "should display the items in the shopping cart when they exist" do
      session[:shopping_cart] = [Product.new(name: 'Produto 1'), Product.new(name: 'Produto 2')]
      helper.shopping_cart_tag.should == %q{<div id="shopping_cart"><ul><li>Produto 1</li><li>Produto 2</li></ul></div>}
    end
  end
end
