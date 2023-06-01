# Para fazer as proximas requisições vc utilizara o site https://reqres.in
# Ele esta preparado para receber e responder suas requisições, o que facilitara os testes de requisições https.

require 'net/http'

https = Net::HTTP.new('reqres.in', 443)  #Voce construiu um objeto Net::HTTP iniciando com os valores de dominio e porta para fazer chamadas HTTPS

https.use_ssl = true  #uma requisição https utilizando o metodo use_ssl

response = https.get("/api/users") #Fes um get para o caminho api/users
# status code
puts response.code #exibiu o codigo da resposta
puts resposne.message #exibiu o status
puts response.body #exibiu o corpo da resposta
