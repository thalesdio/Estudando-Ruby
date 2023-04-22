
class AvengersHeadQuarter
    attr_accessor :list

    def initialize   # método construtor
        self.list = []   # indicando o atributo list é do tipo array
    end

    def put(avenger)  
        self.list.push(avenger)  
    end
    end

    # TDD (Desenvolvimento guiado por testes)
describe AvengersHeadQuarter do  # suite de testes como classe
    it 'Adicione um Vingador' do   # cenario de teste 1
        hq = AvengersHeadQuarter.new

        hq.put('Thor')
        expect(hq.list).to eql ['Thor']  # verificação passando o valor esperado
    end

    it 'Adicione lista de vingadores' do  # cenario de teste 2
        hq = AvengersHeadQuarter.new
        hq.put('Hulk')   # adicionando dado na lista
        hq.put('Iron man')
        hq.put('Spiderman')
        res = hq.list.size > 0  # verificação se a lista tem a quantidade de valores maior que 0 e guarda na variavel res
        
        expect(hq.list).to include 'Hulk'  # verificação se o valor 'Hulk' esta incluso na lista 
        expect(hq.list.size).to be > 0   # verificação se a lista tem a quantidade de valores maior que 0 
        expect(res).to be true   # usando a variavel 'res' para verificar
    end

    it 'Iron man sendo o primeiro da lista' do  # cenario de teste 3
        hq = AvengersHeadQuarter.new
        hq.put('Hulk')   # adicionando dado na lista
        hq.put('Iron man')
        hq.put('Spiderman')

        expect(hq.list).to start_with('Iron man')  # verificando se 'iron man' é o primeiro registro da lista
    end

    it 'Aranha no final da lista' do  # cenario de teste 4
    hq = AvengersHeadQuarter.new
    hq.put('Hulk')   # adicionando dado na lista
    hq.put('Iron man')
    hq.put('Spiderman')

    expect(hq.list).to end_with('Spiderman')  # verificando se 'spiderman' é o ultimo registro da lista
end

    it 'Contem sobrenome' do  # cenario de teste 5
        avenger = 'Peter Parker'
        expect(avenger).to match(/Parker/)  # verificando se 'Parker' faz parte do nome q esta na lista
        expect(avenger).not_to match(/Thales/) # verificando se 'Thales' Não faz parte do nome q esta na lista
    end

end