# language: pt 

Funcionalidade: Login com Sucesso 

-Eu como usuário tendo login e senha validos
-Eu quero fazer login no site facebook

Cenario: Login com sucesso 
Dado que tenho usuário e senha 
 |email|testeautoma12@gmail.com|
 |senha|automa123              |  
Quando preencho o campo login e senha 
Então Devo acessar a pagina principal
