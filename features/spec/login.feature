# language: pt

Funcionalidade: Login no Ecommerce Fake
  Como um usuário do site Ecommerce Fake
  Realizo login com e-mail e senha
  Para que eu tenha acesso aos recursos de usuário do site
  
  Contexto:
    Dado que já esteja na página inicial
    Quando acessar a opção de login

  @realizar_login
  Cenário: Realizar login
    E digitar um e-mail existente 'testdevicepaulo@gmail.com'
    E digitar a senha correta 'Testruby'
    E clicar no botão de login
    Então deve ser realizado o login apresentando uma mensagem de boas vindas

  @erro_no_login
  Cenário: Login com falha
    E digitar um e-mail inexistente 'testdevicepaulo@hotmail.com'
    E digitar a senha incorreta 'Testjava'
    E clicar no botão para realizar login
    Então deve ser mostrada uma mensagem de erro 
  