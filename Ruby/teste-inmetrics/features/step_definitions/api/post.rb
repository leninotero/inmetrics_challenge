Dado('que eu passe os dados do usuario') do                                  
    @body = {
      "admissao": "12/12/2018",
      "cargo": "Analista Sistemas",
      "comissao": "0,00",
      "cpf": "585.947.930-14",
      "departamentoId": 100,
      "nome": "Teste api 2",
      "salario": "9.500,00",
      "sexo": "m",
      "tipoContratacao": "clt"
      }.to_json
  end                                                                          
                                                                               
  Quando('eu realizo a açao do post na api') do  
    auth = {
      :username => "inmetrics",
      :password => "automacao"
    }                              
    @post_usuarios = HTTParty.post 'https://inm-api-test.herokuapp.com/empregado/cadastrar',
                    :basic_auth => auth,
                    :body => @body,
                    :headers => {
                        "Content-Type" => 'application/json'
                    }
  end                                                                          
                                                                               
  Entao('um novo usuario é cadastrado com sucesso na base') do    
    puts @post_usuarios.code
    expect(@post_usuarios.code).to eq 202
  end                                                                          