Dado ("que já esteja na página inicial") do
  @home_page.load
end

Quando ("acessar a opção de login") do
  @home_page.clickSiginOption
end

E ("digitar um e-mail existente {string}") do |email|
  @login_page.writeEmail(email)
end

E ("digitar a senha correta {string}") do |senha|
  @login_page.writePassword(senha)
end  

E ("clicar no botão de login") do
  @login_page.clickSigninButton
end

Então ("deve ser realizado o login apresentando uma mensagem de boas vindas") do
  expect(@login_page).to have_content 'Welcome to your account'
end

E ("digitar um e-mail inexistente {string}") do |email|
  @login_page.writeEmail(email)
end

E ("digitar a senha incorreta {string}") do |senha|
  @login_page.writePassword(senha)
end

E ("clicar no botão para realizar login") do
  @login_page.clickSigninButton
end

Então ("deve ser mostrada uma mensagem de erro") do
  expect(@login_page).to have_content 'Authentication failed'
end