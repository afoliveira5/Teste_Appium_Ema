
Dado('que estou no app de cadastro de usuario') do
  # binding.pry
  @cadastro = CadastroUsuarioAmeScreen.new
  @cadastro.home

end

Quando('tocar em adiciona um novo usuario') do
  # binding.pry
  @cadastro = CadastroUsuarioAmeScreen.new
  @cadastro.tocar_cadastro
end

Então('vejo a tela de cadastrado') do
  pending # Write code here that turns the phrase above into concrete actions
end