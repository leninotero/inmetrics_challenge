Dado('que eu deseje alterar alguns dados do usuario {string}') do |id|
    @body = {
        "admissao": "30/04/1990",
        "cargo": "QA Sênior",
        "comissao": "0,00",
        "cpf": "585.947.930-14",
        "departamentoId": 100,
        "nome": "Teste api Novo",
        "salario": "9.500,00",
        "sexo": "m",
        "tipoContratacao": "pj"
        }.to_json
    auth = {
        :username => "inmetrics",
        :password => "automacao"
        }                              
        @put_usuario = HTTParty.put "http://inm-api-test.herokuapp.com/empregado/alterar/#{id}",
                        :basic_auth => auth,
                        :body => @body,
                        :headers => {
                            "Content-Type" => 'application/json'
                        }
  end                                                                          
                                                                               
  Entao('esse usuario devera ser atualizado com sucesso') do
    puts @put_usuario.code
    expect(@put_usuario.code).to eq 202
  end