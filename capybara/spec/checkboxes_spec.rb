

describe 'checkboxes', :checkbox do   # suite de testes com tag para ser usado no console

    before(:each) do   # Antes de todos os cenarios, será visitada a pagina abaixo. 
        visit '/checkboxes'
    end

    it 'marcando uma opçao' do   # caso de teste
        check('thor')  # passar o 'id' da opção inspecionada
        end

    it 'marcando uma opçao com value' do   # caso de teste
        find('input[value=black-panther]').set(true)  # passar o 'value' da opção inspecionada
        end

     it 'desmarcando opção' do   # caso de teste
        uncheck('antman')   # passar o 'id' ou o 'name' da opção inspecionada
        end

    it 'desmarcando opção usando find set false' do   # caso de teste
        find('input[value=guardians]').set(false)  # passar o 'value' da opção inspecionada
        end

        after(:each) do  
            sleep 4
        end

end


describe 'checkboxes all', :checkbox_all do
    before(:each) do   # Antes de todos os cenarios, será visitada a pagina abaixo. 
        visit '/checkboxes'
    end

    it 'marcando varias opções' do    # caso de teste
        check('thor')  # passar o 'id' da opção inspecionada
        find('input[value=black-panther]').set(true)  # passar o 'value' da opção inspecionada
        find('input[value=iron-man]').set(true)  # passar o 'value' da opção inspecionada
        end

    it 'desmarcando varias opções' do   # caso de teste
        uncheck('antman')   # passar o 'id' ou o 'name' da opção inspecionada
        find('input[value=guardians]').set(false)  # passar o 'value' da opção inspecionada

    end

    it 'marcando e desmarcando' do
        find('input[value=iron-man]').set(true)  # passar o 'value' da opção inspecionada
        uncheck('antman')   # passar o 'id' ou o 'name' da opção inspecionada
    end

    after(:each) do  
        sleep 3
    end

end