require 'net/http'  #preciso adicionar essa biblioteca

exemplo = Net::HTTP.get('example.com', '/index.html') #é feito uma requisição HTTP do tipo GET para o dominio example.com, com o caminho /index.html

File.open('example.html', 'w') do |line| # voce salvou a resposta dentro de uma variavel
    #para depois escrevela para dentro de um arquivo.
line.puts(exemplo) # voce utilizou File.open para um arquivo inexistente, o ruby detectou isso e criou o arquivo antes de escrever as informações nele.
end