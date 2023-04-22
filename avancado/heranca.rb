
# Criando classe q será herdada, classe pai
 class Veiculo
    attr_accessor :nome, :marca, :ano  # criando atributos da classe pai
    
    def initialize(nome, marca, ano)  # método construtor
        self.nome = nome
        self.marca = marca
        self.ano = ano
    end

    def ligar
        puts "#{nome} ligado, bora!"
    end
end

class Carro < Veiculo  # classe filha, Carro, herdando da classe Veiculo
    def acelerar
        puts '90km/h'
    end

    def frear
        puts 'PAROU!'
    end
end

class F1 < Veiculo  # classe filha, F1, herdando da classe Veiculo
 
    def acelerar
        puts '315km/h'
    end

    def frear
        puts 'olha a curvaaa!'
    end
end

virtus = Carro.new('Virtus', 'Volkswagen', '2017')  # criando objeto dessa classa
virtus.ligar  # chamando um dos métodos da classe
virtus.acelerar  # chamando um dos métodos da classe
virtus.frear  # chamando um dos métodos da classe

siena = Carro.new('Siena', 'FIAT', '2011')
siena.ligar
siena.acelerar
siena.frear

compass = Carro.new('Compass', 'Jeep', '2018')
compass.ligar
compass.acelerar
compass.frear

alphatauri = F1.new('carro de F1', 'Alpha Tauri', '2022')
alphatauri.ligar
alphatauri.acelerar
alphatauri.frear