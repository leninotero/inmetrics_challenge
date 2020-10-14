
  Dado('que eu acesso na pagina da inmrobo') do
    visit "/"
    sleep 3
  end

Quando('cadastro um usuário com nome de usuario {string}, a senha {string} e confirmo a mesma senha') do |login, password| 
    find(:xpath, "//*[@id=\"navbarSupportedContent\"]/ul/li[1]/a").click   
    find_field(name: 'username').set login    
    find_field(name: 'pass').set password
    find_field(name: 'confirmpass').set password
    page.save_screenshot('./report/screenshots/Login001.png') 
    click_button "Cadastrar"
    sleep 3
end

Então('devo ver a pagina de login') do
    expect(page).to have_content('Login')
    page.save_screenshot('./report/Login002.png') 
end