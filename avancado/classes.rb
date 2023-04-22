
# escrevendo a classe
class Conta 
    attr_accessor :saldo , :nome

    def initialize (nome)   # criando metodo construtor, com argumento 'nome'
        self.saldo = 0.0
        self.nome = nome
    end

    def deposita(valor)   # criando o metodo dentro da classe
        self.saldo += valor   # acessando o atributo, serve para invocar metodo tambem dentro da classe (semelhante ao 'this' do Java)
        puts 'Valor de deposito: ' + valor.to_s + ' reais.'  # exibindo e convertendo para string
        puts "Valor de #{valor} reais depositado para #{self.nome}"  # concatenando sem precisar converter tipagem da variavel, mais elegante
    end
end

c = Conta.new('Buko')  # instanciando a classe e passando valor do argumento
# c.saldo = 0.0  # indicando valor de inicio do atributo, senao fica como nulo

c.deposita(5680.00)
puts c.saldo  # imprime valor do atributo

c.deposita(110.00)
puts c.saldo
puts c.nome