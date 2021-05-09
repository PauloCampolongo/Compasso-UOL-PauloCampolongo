# language: pt

Funcionalidade: Produto no carrinho do Ecommerce Fake
  Como um cliente do site Ecommerce Fake
  Gostaria de adicionar um produto no carrinho
  E conseguir solicitar a compra por ele

  @adicionar_ao_carrinho
  Cenário: Adicionar ao carrinho
    Dado que esteja com o produto 'shirt' aberto para compra
    Quando clicar na opção para adicionar ao carrinho e voltar ao produto
    E após isso acessar meu carrinho
    Então o produto deve estar adicionado