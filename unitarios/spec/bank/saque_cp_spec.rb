
# Criando testes em BDD a nivel de codigo (BDD = Desenvolvimento guiado por comportamento)

# ESTA CLASSE FOI PARA /UNITARIOS/APP/bank.rb
# criando a classe
#class ContaPoupanca
   # attr_acpessor :saldo, :mensagem  #criando atributo da classe
    #def initialize(saldo)  # criando método construtor ja recebendo o atributo
#        self.saldo = saldo
 #   end
#
 #   def saca(valor)
  #      if (valor > self.saldo)  # if para validar se valor do saque é maior que o saldo da conta 
   #         self.mensagem = 'Saldo insuficiente'  # se if for true exibe mensagem / cenario de saque maior q saldo 
    #    elsif (valor > 500.00)  # elfe if
     #       self.mensagem = 'Saque limitado a R$ 500' # cenario de saque maior q limite
      #  else
       # self.saldo -= valor  # se if for false atualiza o saldo
       # end
  #  end
# end

# importando a classe do bank.rb
require_relative '../../app/bank'

describe ContaPoupanca do  # suite de teste

    describe 'Saque' do  #sub suite de teste
        context 'quando valor é positivo' do  # criando contexto(pré condiçoes)
            before(:all) do   # método do contexto
                @cp = ContaPoupanca.new(5680.00)   # guardando a classe dentro da variavel
                @cp.saca(280)   # função de saque
            end
            it 'entao atualiza saldo' do  # cenario de teste 
                expect(@cp.saldo).to eql 5399.00  # verificação passando o valor esperado apos saque
            end
        end   # colocando a @ na frente da variavel, se transforma numa variavel de instancia, vallida alem do context

        context 'quando saldo é zero' do  # criando contexto(pré condiçoes)
            before(:all) do
                @cp = ContaPoupanca.new(0.00)  # guardando a classe dentro da variavel e abrir a conta com 0
                @cp.saca(70.00)  # função de saque passando valor
            end
            it 'então exibe mensagem' do
                expect(@cp.mensagem).to eql 'Saldo insuficiente'  # exibe mensagem quando valor de saque é maior que o saldo
            end
            it 'e saldo não muda' do
                expect(@cp.saldo).to eql 0.00  # e nao atualiza o saldo pois nao completou o saque
            end
        end

        context 'quando saldo não é suficiente' do  # criando contexto(pré condiçoes)
            before(:all) do
                @cp = ContaPoupanca.new(35.00)  # guardando a classe dentro da variavel e abrir a conta com 35
                @cp.saca(70.00)  # função de saque passando valor
            end
            it 'então exibe mensagem' do
                expect(@cp.mensagem).to eql 'Saldo insuficiente'  # exibe mensagem quando valor de saque é maior que o saldo
            end
            it 'e saldo não muda' do
                expect(@cp.saldo).to eql 35.00  # e nao atualiza o saldo pois nao completou o saque
            end
        end

        context 'quando valor de saque é maior que o limite' do  # criando contexto(pré condiçoes)
            before(:all) do
                @cp = ContaPoupanca.new(5400.00)  # guardando a classe dentro da variavel e abrir a conta com 35
                @cp.saca(700.00)  # função de saque passando valor
            end
            it 'então exibe mensagem' do
                expect(@cp.mensagem).to eql 'Saque limitado a R$ 300'  # exibe mensagem quando valor de saque é maior que o saldo
            end
            it 'e saldo não muda' do
                expect(@cp.saldo).to eql 5400.00  # e nao atualiza o saldo pois nao completou o saque
            end
        end

    end
end