Dado("que esteja com o produto {string} aberto para compra") do |query|
  @product_page.load
end

Quando ("clicar na opção para adicionar ao carrinho e voltar ao produto") do
  @product_page.addToCart
end

E("após isso acessar meu carrinho") do
  @product_cart_page.load
end

Então("o produto deve estar adicionado") do
  expect(@product_cart_page).to have_content 'Your shopping cart contains: 1 Product' 
end


