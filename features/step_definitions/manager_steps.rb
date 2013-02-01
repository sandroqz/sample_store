# encoding: utf-8

Dado /^que eu esteja na página de administração de produtos$/ do
  visit admin_products_path
end

Quando /^preencho "([^"]*)" com "([^"]*)"$/ do |field, value|
  fill_in field, with: value
end

Quando /^eu clico em "([^"]*)" ao lado de "([^"]*)"$/ do |link, texto_linha|
  within(:xpath, "//tr[td/text()='#{texto_linha}']") do
    click_link link
  end
end

Quando /^eu pressiono "([^"]*)"$/ do |button|
  click_button button
end

Então /^eu não devo ver "([^"]*)"$/ do |texto|
  page.should_not have_content(texto)
end
