

describe 'radio buttons', :radiobuttons do   # suite de testes com tag para ser usado no console

    before(:each) do   # Antes de todos os cenarios, será visitada a pagina abaixo. 
        visit '/radios'
    end

    it 'escolhendo um radio pelo id' do   # caso de teste
        choose('cap')  # passar o 'id' da opção inspecionada
    end

    it 'escolhendo radio por find' do   # caso de teste
    find('input[value=iron-man]').click  # passar o 'value' da opção inspecionada
    end

    it 'escolhendo mais de um' do  # caso de teste
        choose('cap')  # passar o 'id' da opção inspecionada
        find('input[value=iron-man]').click  # passar o 'value' da opção inspecionada
    end 
    # marcou um depois o outro respeitando a ordem q foi implementada

    after(:each) do  
        sleep 3
    end

    end