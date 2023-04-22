

describe 'suite rspec' do   # suite de testes

    it 'soma de valores' do  # cenario de teste
        soma = 10 + 8
        expect(soma).to eql 18  # verificação passando o valor esperado 
    end

end