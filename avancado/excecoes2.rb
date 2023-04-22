
# Lançamento de exceções ou tratamento de erros, semelhante ao try-catch

# Tratamento de exceção dentro do método
def soma (n1, n2)
    n1 + n2

rescue Exception => e  # Tratar exceção
    puts 'Erro ao executar calculo'  # Exibe mensagem quando cai na exceção
    end

    soma('15', 9)  # Passando string e inteiro