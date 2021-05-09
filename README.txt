Requisitos:
   *Ruby >= 2.5.x;
   *Chrome e Chrome Driver estáveis.

Instalação de dependências: install bundle



Projeto executável: bundle exec cucumber


Cenários básicos:
   
   Buscar por termo válido: bundle exec cucumber -p default -t@buscar_por_termo_valido
   
   Busca sem resultados:    bundle exec cucumber -p default -t@busca_sem_resultados

   Adicionar ao carrinho:   bundle exec cucumber -p default -t@adicionar_ao_carrinho

   Realizar login:          bundle exec cucumber -p default -t@realizar_login

   Login com falha:         bundle exec cucumber -p default -t@erro_no_login

	