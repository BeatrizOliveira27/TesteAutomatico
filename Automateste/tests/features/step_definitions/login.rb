Dado('que tenho usuário e senha') do |table|
  @email = table.rows_hash['email']
  @senha = table.rows_hash['senha']
  visit 'https://pt-br.facebook.com/'
end

Quando('preencho o campo login e senha') do
  fill_in 'email',with: @email
    fill_in 'pass',with:@senha 
    click_button 'Entrar'
sleep(10)
end
  
Então('Devo acessar a pagina principal') do
  
end