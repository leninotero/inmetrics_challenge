  Dado('que eu entro na pagina da inmrobo') do                                     
    visit "/"  
  end                                                                             
                                                                                  
  Quando('eu faço o login com {string} e {string}') do |user, password|  
    find_field(name: 'username').set user
    find_field(name: 'pass').set password  
    page.save_screenshot('./report/screenshots/Login001.png') 
    click_button "Entre"  
  end                                                                             
                                                                                  
  Então('devo ver a pagina de gestão de funcionários') do                         
    expect(page).to have_content('Pesquisar:')
    page.save_screenshot('./report/screenshots/Login002.png')  
  end    
  
  #=== Bloco de comando do cenário de Login com Erro
  Então('devo ver a mensagem de alerta {string}') do |expect_message|
    alert = find('.alert')
    expect(alert.text).to have_content(expect_message)
    page.save_screenshot('./report/screenshots/LoginFail001.png') 
  end