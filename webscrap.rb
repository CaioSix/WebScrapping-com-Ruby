# O wer scrap existe para automazar o processo de extração de dados de de uma pagina web de forma automatica

require 'nokogiri'
require 'net/htp'

htpps = Net:HTTP.new('example.com', 443) #voce realizou uma requisição para o site example para fazer chamadas http

https.use_ssl = true

response = https.get("/")

doc = Nokogiri::HTML(response.body) #Depois utilizou o nokogiri para parsear o documento
h1 = doc.at('H1')
puts h1.content #imiprime o conteudo da variavel h1