Dado('que eu faço login no sistema com usuário {string}, a senha {string}') do |user, password|
    visit "/"
    find_field(name: 'username').set user
    find_field(name: 'pass').set password  
    page.save_screenshot('./report/screenshots/CadFunc001.png') 
    click_button "Entre"                                                                                                                                                          
  end
                                                                                                                                                                                                                                         
  Quando('eu acesso à pagina de gestão de funcionários') do
    expect(page).to have_content('Pesquisar:')   
    page.save_screenshot('./report/screenshots/CadFunc002.png')
  end
                                                                                                                                                                                                                                         
  Quando('eu acesso ao cadastro de novo funcionários') do
    find(:xpath, "//*[@id=\"navbarSupportedContent\"]/ul/li[2]/a").click
  end
                                                                                                                                                                                                                                         
  Então('preencho o nome {string}, cpf {string}, seleciono sexo {string}, digito a data de admissão {string}, cargo {string}, salário {string} e seleciono {string}') do |nome, cpf, sexo, admissao, cargo, salario, tipoContratacao|  
    find("#inputNome").set nome
    find("#cpf").set cpf
    select(sexo, from: 'slctSexo')
    find("#inputAdmissao").set admissao
    find("#inputCargo").set cargo
    find("#dinheiro").set salario
    choose(option: tipoContratacao)
    page.save_screenshot('./report/screenshots/CadFunc003.png')
    find('input[type="submit"]').click
  end
                                                                                                                                                                                                                                         
  Então('devo ver a mensagem e sucesso {string}') do |expect_message|
    alert = find('.alert')
    expect(alert.text).to have_content(expect_message)
    page.save_screenshot('./report/screenshots/CadFunc004.png')
  end

  #== Bloco de ações para o cenários de edição de Funcionário
  Quando('procuro pelo funcionário pelo cpf {string}') do |cpf|                                                                
    find('input[type="search"]').set cpf
    page.save_screenshot('./report/screenshots/CadFunc003.png')
  end                                                                                                                            
                                                                                                                                 
  Então('altero as informações de nome para {string}, Cargo para {string} e Salário para {string}') do |nome, cargo, salario|    
    find(:xpath, '//*[@id="tabela"]/tbody/tr/td[6]/a[2]/button').click    
    find("#inputNome").set nome
    find("#inputCargo").set cargo
    find("#dinheiro").set salario
    page.save_screenshot('./report/screenshots/CadFunc005.png')
    find('input[type="submit"]').click
  end        
  
  #=== Bloco de ações para o cenário de deletar um funcionário
  Quando('procuro pelo funcionário pelo cpf {string} a ser deletado') do |cpf|
    find('input[type="search"]').set cpf
    find("#delete-btn").click
    page.save_screenshot('./report/screenshots/CadFunc003.png')
  end
                                                                                                                                                                                                                                         