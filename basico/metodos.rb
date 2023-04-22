
# comando 'def' para criar metodos
def teste
    puts 'oi'
end

# para chamar o metodo apenas chame o nome do metodo, conforme abaixo
teste

def retorna_nome
'Thales'
end

resultado = retorna_nome
puts resultado

# metodo recebendo argumentos
def soma(v1, v2)
    total = v1 + v2
    total
end

res = soma(15, 27) # passando os valores para os argumentos do metodo
puts res

