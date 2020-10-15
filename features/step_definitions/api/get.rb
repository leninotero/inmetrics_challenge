  Dado('que eu faça um GET no endpoint usuarios') do
    auth = {
        :username => "inmetrics",
        :password => "automacao"
      } 
    @get_empregados = HTTParty.get 'https://inm-api-test.herokuapp.com/empregado/list_all',
                    :basic_auth => auth
  end
  
  Entao('o retorno dele será todos os usuarios pesquisados') do    
    puts "Response body: #{@get_empregados.body}"
    puts "Response code: #{@get_empregados.code}"
    expect(@get_empregados.code).to eq 202
  end

  #=== Desenvolvimento de get com ID específico
  Dado('que eu faça um GET no endpoint usuarios com id {string}') do |id|
   
    auth = {
      :username => "inmetrics",
      :password => "automacao"
      } 
    @get_empregados = HTTParty.get "https://inm-api-test.herokuapp.com/empregado/list/#{id}",
                    :basic_auth => auth
  end