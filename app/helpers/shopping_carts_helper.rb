module ShoppingCartsHelper
  def shopping_cart_tag
    products = ""
    arr = session[:shopping_cart]
    arr.each do |prod|
      products << "<li>#{prod.name}</li>"
    end if arr
    %Q{<div id="shopping_cart"><ul>#{products}</ul></div>}.html_safe
  end
end
