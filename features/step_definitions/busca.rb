Dado ("que esteja na página inicial") do
  @home_page.load
end

Quando ("buscar pelo produto {string}") do |query|
  @home_page.search(query)
end	

Então ("devem ser retornados produtos") do
  expect(@search_page.products.first).to have_image
  expect(@search_page.products.first).to have_name
  expect(@search_page.products.first.name.text).to have_content 'shirt'
end

Quando ("buscar por um produto inexistente {string}") do |query|
  @home_page.search(query)
end

Então ("é apresentada uma mensagem sem resultados achados") do
  expect(@search_page).to have_content 'No results were found'
end
