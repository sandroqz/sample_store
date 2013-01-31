# encoding: utf-8

Dado /^que existem os produtos (.*)$/ do |products|
  list = products.split(", ").map{|s| s[1..-2]}
  list.each do |prod|
    Product.create! name: prod
  end
end

Dado /^que eu esteja na página inicial$/ do
  visit root_path
end

Dado /^que existe o produto "([^"]*)" com a descrição "([^"]*)"$/ do |product, description|
  Product.create! name: product, description: description
end

Então /^eu devo ver "([^"]*)"$/ do |content|
  page.should have_content(content)
end

Quando /^eu clico em "([^"]*)"$/ do |link|
  click_link(link)
end

Dado /^que eu esteja nos detalhes do "([^"]*)"$/ do |product|
  p = Product.find_by_name(product)
  visit product_path(p)
end

Então /^"([^"]*)" deve aparecer no carrinho de compras$/ do |texto|
  within("div#shopping_cart") do
    page.should have_content(texto)
  end
end
