
# hash = objeto q tem coleção de dados, feita atraves de chave e valor

# criando o hash
carro = Hash[nome: 'Civic', marca: 'Honda', ano: '2015']

puts carro # exibindo todo o hash
puts carro[:marca] # exibindo apenas a chave escolhida
puts carro[:nome]
puts carro[:ano]

carro[:cor] = 'Preto'
puts carro