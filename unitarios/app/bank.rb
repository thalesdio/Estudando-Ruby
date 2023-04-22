
# criando Classe genérica
class Conta
    attr_accessor :saldo, :mensagem  # criando atributo da classe
    def initialize(saldo)  # criando método construtor ja recebendo o atributo
        self.saldo = saldo
    end
    def saca(valor, max, taxa)
        if (valor > self.saldo)  # if para validar se valor do saque é maior que o saldo da conta 
            self.mensagem = 'Saldo insuficiente'  # se if for true exibe mensagem / cenario de saque maior q saldo 
        elsif (valor > max)  # elfe if
            self.mensagem = 'Saque limitado a R$ ' + max.to_s # cenario de saque maior q limite
        else
        self.saldo -= valor + taxa  # se if for false atualiza o saldo
        end
    end
end


# Criando a classe
class ContaCorrente < Conta  # Herdando classe
    def saca(valor, max = 500, taxa = 3.00)
        super   # busca na classe pai método com mesmo nome
    end
end

class ContaPoupanca < Conta   # Herdando classe
    def saca(valor, max = 300, taxa = 1.00)
        super   # busca na classe pai método com mesmo nom
    end
end